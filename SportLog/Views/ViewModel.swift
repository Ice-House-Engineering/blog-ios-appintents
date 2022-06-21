//
//  ViewModel.swift
//  SportLog
//
//  Created by Habibi on 15/06/22.
//

import SwiftUI

class ViewModel: ObservableObject {
	
	static let shared = ViewModel()
	
	@Published var path: [SportActivityModel] = []
	
	func navigateTo(model: SportActivityModel) {
		path = [model]
	}
	
	func navigateToList() {
		path = []
	}
	
}
