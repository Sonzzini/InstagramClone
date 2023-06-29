//
//  DiscoverPeopleButton.swift
//  Facebook2
//
//  Created by Paulo Sonzzini Ribeiro de Souza on 28/06/23.
//

import Foundation
import SwiftUI


struct DiscoverPeopleButton: View {
	
	@Binding var isOn: Bool
	
	var body: some View {
		Button {
			isOn.toggle()
		} label: {
			Image(systemName: isOn ? "person.crop.circle.fill.badge.plus" : "person.fill.badge.plus")
				.foregroundColor(.white)
				.font(.system(size: 13.5, weight: .bold))
				.frame(width: 30, height: 30)
				.background(Color.gray.opacity(0.27))
				.cornerRadius(6)
		}

	}
}
