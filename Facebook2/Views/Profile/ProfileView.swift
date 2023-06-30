//
//  ProfileView.swift
//  Facebook2
//
//  Created by Paulo Sonzzini Ribeiro de Souza on 28/06/23.
//

import Foundation
import SwiftUI

struct ProfileView: View {
	
	let user: User
	
	var isYourProfile: Bool = false
	
	@State var createSheet: Bool = false
	@State var optionsSheet: Bool = false
	@State var showDiscoverPeople: Bool = false
	
	var body: some View {
		NavigationStack {
			ScrollView {
				VStack(alignment: .leading) {
					HStack(spacing: 40) {
						
						if user.profileCodeName == "sonzii_polo" {
							YourStoriesCard(showsName: false, showsHasStoryName: false)
						} else {
							StoriesCard(user: user, showsName: false)
						}
						VStack {
							Text("\(user.posts)")
								.bold()
							Text("Posts")
								.font(.system(size: 15))
						}
						VStack {
							Text("\(user.followers)")
								.bold()
							Text("Followers")
								.font(.system(size: 15))
						}
						VStack {
							Text("\(user.following)")
								.bold()
							Text("Following")
								.font(.system(size: 15))
						}
					}
					
					Text("\(user.profileName)")
						.font(.system(size: 15, weight: .bold, design: .rounded))
					
					user.description
					
					if isYourProfile {
						HStack(spacing: 5) {
							EditProfileButton(user: user)
							ShareProfileButton(user: user)
							DiscoverPeopleButton(isOn: $showDiscoverPeople)
						}
					}
					
					if showDiscoverPeople {
						Text("Discover people")
							.font(.system(size: 15, weight: .bold, design: .rounded))
					}
					
					// discover people -> IF DISCOVER PEOPLE -> SHOW CARDS
					
					// MARK: End of Profile Content
				}
				.toolbar {
					
					if isYourProfile {
						ToolbarItem(placement: .navigationBarLeading) {
							Text("\(user.profileCodeName)")
								.font(.system(size: 25, weight: .bold))
						}
					} else {
						ToolbarItem(placement: .principal) {
							Text("\(user.profileCodeName)")
								.font(.system(size: 15, weight: .bold))
						}
					}
					
					ToolbarItemGroup(placement: .navigationBarTrailing) {
						
						Button {
							createSheet = true
						} label: {
							Image(systemName: "plus.app")
								.resizable()
								.frame(width: 20, height: 20)
								.bold()
								.foregroundColor(.white)
						}
						Spacer()
						Button {
							optionsSheet = true
						} label: {
							Image(systemName: "line.3.horizontal")
								.resizable()
								.frame(width: 20, height: 15)
								.bold()
								.foregroundColor(.white)
						}
						
						
					}
					
				}
				.sheet(isPresented: $createSheet) {
					NewPostSheetView()
						.presentationDetents([.medium])
						.presentationDragIndicator(.visible)
				}
				
				.sheet(isPresented: $optionsSheet) {
					OptionsSheetView()
						.presentationDetents([.medium])
						.presentationDragIndicator(.visible)
				}
				
			}
		}
	}
}

struct ProfileView_Preview: PreviewProvider {
	static var previews: some View {
		ProfileView(user: Mark, isYourProfile: false)
	}
}
