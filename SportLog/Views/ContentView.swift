//
//  ContentView.swift
//  SportLog
//
//  Created by Habibi on 15/06/22.
//

import SwiftUI

enum SportActivity: String, Sendable, CaseIterable {
	case run
	case squat
	case walk
	case jump
	case pushUp
	case skip
}

extension SportActivity {
	
	var title: String {
		switch self {
		case .run:
			return "Running"
		case .squat:
			return "Squating"
		case .walk:
			return "Walking"
		case .jump:
			return "Jumping"
		case .pushUp:
			return "Push Up"
		case .skip:
			return "Skipping"
		}
	}
	
	var icon: String {
		switch self {
			
		case .run:
			return "star.fill"
		case .squat:
			return "moon.fill"
		case .walk:
			return "figure.walk"
		case .jump:
			return "heart.fill"
		case .pushUp:
			return "person.2.fill"
		case .skip:
			return "sun.max.fill"
		}
	}
}

struct ContentView: View {
	
	@EnvironmentObject var currentSelected: SelectedSportActivity
	@EnvironmentObject private var vm: ViewModel
	
	@State private var shouldRedirectToDetailView: Bool = false
	@State var currentModel: SportActivityModel? = nil
	
	let menus: [SportActivityModel] = [
		SportActivityModel(type: .run),
		SportActivityModel(type: .walk),
		SportActivityModel(type: .jump),
		SportActivityModel(type: .pushUp),
		SportActivityModel(type: .skip)
	]
	
	var body: some View {
		
		NavigationStack(path: $vm.path) {
			List {
				ForEach(menus, id: \.type) { menu in
					ZStack {
						SingleBox(model: menu)
						NavigationLink(
							destination: DetailView(model: menu)
						) {}.opacity(0)
					}
				}
			}
			.navigationDestination(for: SportActivityModel.self) { activity in
				DetailView(model: activity)
			}
			.navigationTitle("Sport Log App")
			.listStyle(GroupedListStyle())
			.listRowSeparator(Visibility.hidden)
		}
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
