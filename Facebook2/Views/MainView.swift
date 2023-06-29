//
//  MainView.swift
//  Facebook2
//
//  Created by Paulo Sonzzini Ribeiro de Souza on 28/06/23.
//

import Foundation
import SwiftUI

struct MainView: View {
	var body: some View {
		TabView {
			HomeView()
				.tabItem {
					Image(systemName: "house")
				}
			
			ExploreView()
				.tabItem {
					Image(systemName: "magnifyingglass")
				}
			
			NewPostView()
				.tabItem {
					Image(systemName: "plus.app")
				}
			
			ReelsView()
				.tabItem {
					Image(systemName: "play.square.stack")
				}
			
			ProfileView(user: YourProfile, isYourProfile: true)
				.tabItem {
					Image(systemName: "person.circle.fill")
				}
		}
	}
}

