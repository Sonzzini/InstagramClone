//
//  Post.swift
//  Facebook2
//
//  Created by Paulo Sonzzini Ribeiro de Souza on 29/06/23.
//

import Foundation
import SwiftUI

struct Post: View {
	
	var imageName: String
	@State var user: User
	
	@State var Likes: Int = 0
	@State var Comments: Int = 0
	
	var body: some View {
		VStack(alignment: .leading, spacing: 5) {
			
			HStack {
				NavigationLink(destination: ProfileView(user: user)) {
					StoriesCard(user: user, showsName: false, isPost: true)
				}
				Text(user.profileName)
					.font(.system(size: 15, weight: .bold))
			}
					  
			Image(imageName)
				.resizable()
				.aspectRatio(contentMode: .fit)
			
			HStack {
				PostLikeButton(Likes: $Likes)
				PostCommentsButton()
				Spacer()
				PostBookmarkButton(post: self, user: $user)
			}
		}
		.padding()

		
		
		
	}
}

