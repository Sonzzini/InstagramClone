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
			
			NewPostView()
				.tabItem {
					Image(systemName: "plus.app")
				}
			
			ProfileView(isYourProfile: true, posts: 40, followers: 223, following: 310, profileName: "Paulo Sonzzini", profileCodeName: "sonzii_polo")
				.tabItem {
					Image(systemName: "person.circle.fill")
				}
		}
	}
}

