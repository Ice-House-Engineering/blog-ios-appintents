//
//  ProgressView.swift
//  SportLog
//
//  Created by Habibi on 15/06/22.
//

import Foundation
import SwiftUI

struct ProgressView: View {
	
	var body: some View {
		
		VStack {
			
			Text("My Progress")
				.foregroundColor(.black)
				.font(.title2)
			Divider()
			
			ZStack {
				RoundedRectangle(cornerRadius: 8)
					.foregroundColor(.gray)
				
				HStack {
					Text("Walk")
						.foregroundColor(.white)
						.font(.subheadline)
					Spacer()
					Text("5 KM")
						.foregroundColor(.white)
						.font(.subheadline)
						.fontWeight(.bold)
				}
				.padding(.all, 8)
			}
			
			ZStack {
				RoundedRectangle(cornerRadius: 8)
					.foregroundColor(.gray)
				
				HStack {
					Text("Running")
						.foregroundColor(.white)
						.font(.subheadline)
					Spacer()
					Text("10 KM")
						.foregroundColor(.white)
						.font(.subheadline)
						.fontWeight(.bold)
				}
				.padding(.all, 8)
			}
			
			ZStack {
				RoundedRectangle(cornerRadius: 8)
					.foregroundColor(.gray)
				
				HStack {
					Text("Jumping")
						.foregroundColor(.white)
						.font(.subheadline)
					Spacer()
					Text("120 times")
						.foregroundColor(.white)
						.font(.subheadline)
						.fontWeight(.bold)
				}
				.padding(.all, 8)
			}
		}
	}
}

struct ProgressView_Previews: PreviewProvider {
	static var previews: some View {
		ProgressView()
	}
}
