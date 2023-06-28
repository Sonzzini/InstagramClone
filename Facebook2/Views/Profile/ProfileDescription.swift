//
//  ProfileDescription.swift
//  Facebook2
//
//  Created by Paulo Sonzzini Ribeiro de Souza on 28/06/23.
//

import Foundation
import SwiftUI

struct ProfileDescription: View {
	
	
	
	var body: some View {
		VStack(alignment: .leading) {
			HStack {
				Image(systemName: "heart.fill")
					.foregroundColor(.red)
				
				NavigationLink(destination: ProfileView(user: Julia, isYourProfile: false)) {
					Text("@julia.flolivv")
						.foregroundColor(.cyan)
				}
					.foregroundColor(.cyan)
				
				Image(systemName: "heart.fill")
					.foregroundColor(.red)
			}
			
			Text("Apoc 3,20:")
			Text("Eis que estou à porta e bato. Se alguém ouvir a minha voz e abrir a porta, entrarei e cearei com ele, e ele comigo.")
		}.font(.system(size: 15))
	}
}
