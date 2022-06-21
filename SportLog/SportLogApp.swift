//
//  SportLogApp.swift
//  SportLog
//
//  Created by Habibi on 15/06/22.
//

import SwiftUI

class SelectedSportActivity: ObservableObject {
	@Published var currentSelected: SportActivity? = nil
}

@main
struct SportLogApp: App {
	
	@Environment(\.scenePhase) var scenePhase
	@StateObject var selectedSportActivity = SelectedSportActivity()
	
	var body: some Scene {
		WindowGroup {
			MainView()
				.environmentObject(selectedSportActivity)
		}
		.onChange(of: scenePhase) { newPhase in
			if newPhase == .active {
				
			} else if newPhase == .inactive {
				
			} else if newPhase == .background {
				
			}
		}
	}
}
