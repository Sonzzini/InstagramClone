//
//  StoriesView.swift
//  Facebook2
//
//  Created by Paulo Sonzzini Ribeiro de Souza on 27/06/23.
//

import Foundation
import SwiftUI

struct StoriesView: View {
	
	@Environment(\.dismiss) private var dismiss
	
	@State var reportSheetOn: Bool = false
	
	let user: User
	let profileImage: String
	
	var body: some View {
		NavigationStack {
			VStack {
				
				Image(systemName: "xmark")
				// comentário
				
			}
			.toolbar {
				
				ToolbarItem(placement: .navigationBarLeading) {
					NavigationLink(destination: ProfileView(user: user, isYourProfile: false)) {
						Image(profileImage)
							.resizable()
							.frame(width: 40, height: 40)
							.clipShape(Circle())
					}
				}
				
				ToolbarItemGroup(placement: .navigationBarTrailing) {
					
					Button {
						reportSheetOn.toggle()
					} label: {
						Image(systemName: "ellipsis")
					}

					
					Button {
						dismiss()
					} label: {
						Image(systemName: "xmark")
					}

				}
				
			}
			.sheet(isPresented: $reportSheetOn) {
				ReportSheetView()
					.presentationDetents([.medium])
					.presentationBackground(.opacity(0))
			}
			
		}
		.navigationBarBackButtonHidden(true)
	}
}
