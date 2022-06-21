//
//  DetailView.swift
//  SportLog
//
//  Created by Habibi on 15/06/22.
//

import Foundation
import SwiftUI

struct DetailView: View {
	
	var model: SportActivityModel
	
	var body: some View {
		NavigationView {
			VStack {
				Image(systemName: model.type.icon)
					.font(.system(size: 24))
					.foregroundColor(.blue)
					.padding(.bottom, 10)
				Button("Start \(model.type.title)") {
					
				}
			}
		}
		.navigationTitle(model.type.title)
		
	}
}

struct DetailView_Previews: PreviewProvider {
	static var previews: some View {
		DetailView(model: SportActivityModel.defaultObject)
	}
}
