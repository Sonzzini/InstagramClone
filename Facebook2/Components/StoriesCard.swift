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
	
	let imageName: String
	let profileName: String
	
	var showsName: Bool = true
	
	var body: some View {
		VStack {
			
			Button {
				presentStory.toggle()
			} label: {
				Image(imageName)
					.resizable()
					.aspectRatio(contentMode: .fill)
					.frame(width: 70, height: 70)
					.clipShape(Circle())
					.padding(4)
					.overlay(Circle().stroke(LinearGradient(colors: [Color("InstagramPurple"), Color("InstagramPurple"), Color("InstagramPink"), Color("InstagramOrange"), Color("InstagramYellow")], startPoint: .topTrailing, endPoint: .bottomLeading), lineWidth: 2.5))
					.padding(4)
			}
			if showsName {
				Text(profileName)
					.padding([.top], -8)
					.font(.system(size: 12))
					.foregroundColor(.white)
			}
		}
		.fullScreenCover(isPresented: $presentStory) {
			StoriesView(profileImage: imageName)
				.presentationDetents([.large])
		}
	}
}
