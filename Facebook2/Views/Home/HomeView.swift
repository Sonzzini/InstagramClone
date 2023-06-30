//
//  ContentView.swift
//  Facebook2
//
//  Created by Paulo Sonzzini Ribeiro de Souza on 27/06/23.
//

import SwiftUI

struct HomeView: View {
	
	let Instagram: String = "Instagram"
	
	var body: some View {
		NavigationStack {
			ScrollView {
				VStack {
					// This was changed
					ScrollView(.horizontal, showsIndicators: false) {
						HStack {
							YourStoriesCard(showsName: true)
							StoriesCard(user: Mark)
							StoriesCard(user: John)
							StoriesCard(user: Susan)
							StoriesCard(user: Derek)
						}
					}

					Post(imageName: "Post1", user: Mark)
					Post(imageName: "Post1", user: YourProfile)
					// CONTENT
					
				}
				
				.padding()
				
				.toolbar {
					
					ToolbarItem(placement: .navigationBarLeading) {
						Text("Instagram")
							.font(.largeTitle)
							.fontWeight(.bold)
							.fontDesign(.rounded)
					}
					
					ToolbarItemGroup(placement: .navigationBarTrailing) {
						NavigationLink(destination: NotificationsView()) {
							Image(systemName: "heart")
								.foregroundColor(.white)
						}
						
						NavigationLink(destination: MessagesView()) {
							Image(systemName: "ellipsis.message")
								.foregroundColor(.white)
						}
					}
					
					
				} // toolbar
				
			}
		}.navigationBarBackButtonHidden(true)
	}
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
