//
//  PostLikeButton.swift
//  Facebook2
//
//  Created by Paulo Sonzzini Ribeiro de Souza on 29/06/23.
//

import Foundation
import SwiftUI

struct PostLikeButton: View {
	
	@State var isLiked: Bool = false
	@Binding var Likes: Int
	
	var body: some View {
		Button {
			
			withAnimation(.spring(response: 0.5, dampingFraction: 0.5)) {
				isLiked.toggle()
			}
			
			if isLiked {
				Likes = Likes + 1
			} else {
				Likes = Likes - 1
			}
			
		} label: {
			Image(systemName: isLiked ? "heart.fill" : "heart")
				.foregroundColor(isLiked ? .red : .white)
				.frame(width: 20, height: 20)
		}
		
	}
}
