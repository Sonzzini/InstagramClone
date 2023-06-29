//
//  EditProfileView.swift
//  Facebook2
//
//  Created by Paulo Sonzzini Ribeiro de Souza on 28/06/23.
//

import Foundation
import SwiftUI


struct EditProfileView: View {
	@Environment(\.dismiss) private var dismiss
	
	var user: User
	
	var body: some View {
		NavigationStack {
			ScrollView {
				List {
//					HStack {
//						StoriesCard(user: user, showsName: false, hasBorder: false)
//						Image(systemName: "face.smiling")
//							.resizable()
//							.frame(width: 30, height: 30)
//							.padding(16)
//							.clipShape(Circle())
//							.padding(4)
//							.overlay(Circle().stroke(Color.gray, lineWidth: 1))
//							.padding(4)
//					}
					Text("Edit picture or avatar")
						.bold()
						.foregroundColor(.blue)
					
					Text("User name")
					
					Text("What")
					
				}
				.listStyle(.plain)
				.toolbar {
					
					ToolbarItem(placement: .cancellationAction) {
						Button {
							dismiss()
						} label: {
							Text("Cancel")
								.foregroundColor(.white)
						}
					}
					
					ToolbarItem(placement: .principal) {
						Text("Edit profile")
							.bold()
					}
					
					ToolbarItem(placement: .confirmationAction) {
						Button {
							//
						} label: {
							Text("Done")
								.foregroundColor(.blue)
						}
						
					}
				}
			}
		}
	}
}
