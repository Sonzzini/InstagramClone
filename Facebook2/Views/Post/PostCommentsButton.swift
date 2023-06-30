//
//  PostCommentsButton.swift
//  Facebook2
//
//  Created by Paulo Sonzzini Ribeiro de Souza on 30/06/23.
//

import Foundation
import SwiftUI

struct PostCommentsButton: View {
	
	@State var CommentsSheetIsPresented: Bool = false
	
	var body: some View {
		Button {
			
			CommentsSheetIsPresented.toggle()
			
		} label: {
			Image(systemName: "message")
				.foregroundColor(.white)
				.frame(width: 20, height: 20)
		}
		.sheet(isPresented: $CommentsSheetIsPresented) {
			CommentsView()
				.presentationDetents([.large, .medium])
				.presentationDragIndicator(.visible)
		}

	}
}
