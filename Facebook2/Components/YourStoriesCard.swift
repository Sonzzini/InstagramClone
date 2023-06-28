//
//  YourStoriesCard.swift
//  Facebook2
//
//  Created by Paulo Sonzzini Ribeiro de Souza on 27/06/23.
//

import Foundation
import SwiftUI

struct YourStoriesCard: View {
	
	@State var presentStory: Bool = false
	@State var hasStory: Bool = false
	
	let imageName: String = "MyProfilePic"
	//let profileName: String
	var showsName: Bool
	var showsHasStoryName: Bool = true
	
	var body: some View {
		VStack {
			Button {
				
				if hasStory {
					presentStory.toggle()
				}
				else {
					hasStory.toggle()
				}
				
			} label: {
				if hasStory {
					if showsHasStoryName {
						StoriesCard(imageName: imageName, profileName: "Paulo")
					}
					else {
						StoriesCard(imageName: imageName, profileName: "Paulo", showsName: false)
					}
				}
				else {
					ZStack {
						Image(imageName)
							.resizable()
							.aspectRatio(contentMode: .fill)
							.frame(width: 70, height: 70)
							.clipShape(Circle())
							.padding(8)
						
						Image(systemName: "plus.circle.fill")
							.resizable()
							.frame(width: 25, height: 25)
							.background(Color.white)
							.clipShape(Circle())
							.overlay(Circle().stroke(Color.black, lineWidth: 2.5))
							.offset(x: 25, y: 25)
					}
				}
			}
			if showsName {
				if !hasStory {
					Text("Your Story")
						.padding([.top], -8)
						.font(.system(size: 12))
						.opacity(0.8)
				}
			}
		}
	}
}
