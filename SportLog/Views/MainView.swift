//
//  MainView.swift
//  SportLog
//
//  Created by Habibi on 15/06/22.
//

import Foundation
import SwiftUI

struct MainView: View {
	@EnvironmentObject var currentSelected: SelectedSportActivity
	
	@StateObject var viewModel = ViewModel.shared
	var body: some View {
			TabView {
				ContentView()
					.tabItem {
						Label("Menu", systemImage: "list.dash")
					}
					.environmentObject(currentSelected)
					.environmentObject(viewModel)

				OrderView()
					.tabItem {
						Label("My Progress", systemImage: "car.fill")
					}
			}
		}
}
