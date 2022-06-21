//
//  OrderView.swift
//  SportLog
//
//  Created by Habibi on 15/06/22.
//

import Foundation
import SwiftUI

struct OrderView: View {
	
	var body: some View {
		NavigationView {
			VStack {
				
				HStack {
					Text("Walk")
						.foregroundColor(.black)
						.font(.subheadline)
					Spacer()
					Text("5 KM")
						.foregroundColor(.black)
						.font(.subheadline)
						.fontWeight(.bold)
				}
				.padding(.bottom, 8)
				
				HStack {
					Text("Running")
						.foregroundColor(.black)
						.font(.subheadline)
					Spacer()
					Text("10 KM")
						.foregroundColor(.black)
						.font(.subheadline)
						.fontWeight(.bold)
				}
				.padding(.bottom, 8)
				
				HStack {
					Text("Jumping")
						.foregroundColor(.black)
						.font(.subheadline)
					Spacer()
					Text("120 times")
						.foregroundColor(.black)
						.font(.subheadline)
						.fontWeight(.bold)
				}
				.padding(.bottom, 8)
				
				Spacer()
			}
			.padding(.all, 20)
			.navigationTitle("My Progress")
		}
		
	}
}
