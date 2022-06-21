//
//  SportLogIntents.swift
//  SportLog
//
//  Created by Habibi on 15/06/22.
//

import Foundation
import SwiftUI
import AppIntents

extension SportActivity: AppEnum {
	
	public static var typeDisplayName: LocalizedStringResource = "Sport Activity"
	
	public static var caseDisplayRepresentations: [SportActivity: DisplayRepresentation] = [
		.walk: "Walking",
		.skip: "Skipping",
		.pushUp: "Push Up",
		.jump: "Jump",
		.run: "Running",
		.squat: "Squatting"
	]
}

struct ShowMyProgressIntent: AppIntent {
	
	static var title: LocalizedStringResource = "Show Sport Progress"
	
	@MainActor
	func perform() async throws -> some IntentPerformResult {
		return .finished {
			ProgressView()
		}
	}
}

struct StartSportActivityIntent: AppIntent {
	
	static var title: LocalizedStringResource = "Start Sport Activity"
	static var openAppWhenRun: Bool = true // Open app directly
	
	@Parameter(title: "Activity")
	var activity: SportActivity
	
	@MainActor
	func perform() async throws -> some IntentPerformResult {
		let model = SportActivityModel(type: activity)
		ViewModel.shared.navigateTo(model: model)
		return .finished(value: true)
	}
}

struct SportLogShortcuts: AppShortcutsProvider {
	static var appShortcuts: [AppShortcut] {
		AppShortcut(
			intent: ShowMyProgressIntent(),
			phrases: [
				"Show My Progress in \(.applicationName)",
				"Start running now"
			]
		)
	}
}
