//
//  StoriesCard.swift
//  Facebook2
//
//  Created by Paulo Sonzzini Ribeiro de Souza on 27/06/23.
//

import Foundation
import SwiftUI

struct StoriesCard: View {
	
	@State var presentStory: Bool = false
	
	let user: User
	
	var showsName: Bool = true
	var hasBorder: Bool = true
	
	var isPost: Bool = false
	
	var body: some View {
		VStack {
			
			Button {
				presentStory.toggle()
			} label: {
				if hasBorder {
					Image(user.imageName)
						.resizable()
						.aspectRatio(contentMode: .fill)
						.frame(width: isPost ? 30 : 70, height: isPost ? 30 : 70)
						.clipShape(Circle())
						.padding(4)
						.overlay(Circle().stroke(LinearGradient(colors: [Color("InstagramPurple"), Color("InstagramPurple"), Color("InstagramPink"), Color("InstagramOrange"), Color("InstagramYellow")], startPoint: .topTrailing, endPoint: .bottomLeading), lineWidth: 2.5))
						.padding(4)
				}
				else {
					Image(user.imageName)
						.resizable()
						.aspectRatio(contentMode: .fill)
						.frame(width: isPost ? 30 : 70, height: isPost ? 30 : 70)
						.clipShape(Circle())
						.padding(4)
						.padding(4)
				}
			}
			if showsName {
				Text(user.profileName)
					.padding([.top], -8)
					.font(.system(size: 12))
					.foregroundColor(.white)
			}
		}
		.fullScreenCover(isPresented: $presentStory) {
			StoriesView(user: user, profileImage: user.imageName)
				.presentationDetents([.large])
		}
	}
}
