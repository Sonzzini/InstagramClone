//
//  PostBookmarkButton.swift
//  Facebook2
//
//  Created by Paulo Sonzzini Ribeiro de Souza on 30/06/23.
//

import Foundation
import SwiftUI

struct PostBookmarkButton: View {
	
	@State var bookmarkSheetIsPresented: Bool = false
	let post: Post
	@Binding var user: User
	
	var body: some View {
		Button {
			
			bookmarkSheetIsPresented.toggle()
			
		} label: {
			Image(systemName: "bookmark")
				.foregroundColor(.white)
				.frame(width: 20, height: 20)
		}
		.sheet(isPresented: $bookmarkSheetIsPresented) {
			BookmarkView(user: $user, post: post)
				.presentationDetents([.medium, .large])
				.presentationDragIndicator(.visible)
		}

	}
}
