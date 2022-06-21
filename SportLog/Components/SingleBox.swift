//
//  SingleBox.swift
//  SportLog
//
//  Created by Habibi on 15/06/22.
//

import Foundation
import SwiftUI

struct SportActivityModel: Hashable {
	var type: SportActivity
	
	static var defaultObject: SportActivityModel {
		return SportActivityModel(type: .walk)
	}
}

struct SingleBox: View {
	
	var model: SportActivityModel
	
	var body: some View {
		ZStack {
			
			RoundedRectangle(cornerRadius: 8)
				.fill(.teal)
				.frame(height: 100)
			
			HStack {
				Text(model.type.title)
					.foregroundColor(.white)
					.fontWeight(.bold)
					.font(.title2)
					.padding(.leading, 20)
				
				Spacer()
				
				Image(systemName: model.type.icon)
					.font(.system(size: 24))
					.foregroundColor(.white)
					.padding(.trailing, 20)
			}
			
		}
		
	}
}

struct SingleBox_Previews: PreviewProvider {
	static var previews: some View {
		SingleBox(
			model:
				SportActivityModel(
					type: .walk
				)
		)
	}
}
