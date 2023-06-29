//
//  ShareProfileButton.swift
//  Facebook2
//
//  Created by Paulo Sonzzini Ribeiro de Souza on 28/06/23.
//

import Foundation
import SwiftUI


struct ShareProfileButton: View {
	
	@State var shareProfileSheet: Bool = false
	var user: User
	
	var body: some View {
		
		Button {
			shareProfileSheet.toggle()
		} label: {
			Text("Share profile")
				.foregroundColor(.white)
				.font(.system(size: 13.5, weight: .bold))
				.frame(width: 170, height: 30)
				.background(Color.gray.opacity(0.27))
				.cornerRadius(6)
		}
		.fullScreenCover(isPresented: $shareProfileSheet) {
			//ShareProfileView()
		}

	}
}
