//
//  BookmarkView.swift
//  Facebook2
//
//  Created by Paulo Sonzzini Ribeiro de Souza on 30/06/23.
//

import Foundation
import SwiftUI

struct BookmarkView: View {
	
	@Binding var user: User
	let post: Post
	
	var body: some View {
		NavigationStack {
			ScrollView {
				VStack {
					
					HStack {
						Text("Collections")
							.font(.system(size: 18, weight: .bold, design: .rounded))
						Spacer()
						
						// MARK: New collection button
						Button {
							//
						} label: {
							Text("New collection")
								.font(.system(size: 14, weight: .bold, design: .rounded))
						}
						
					}
					
					Text("Content")
				}
				.padding()
				.padding([.top], 30)
				.toolbar {
					
					ToolbarItemGroup(placement: .navigationBarLeading) {
						
						HStack {
							Image(post.imageName)
								.resizable()
								.frame(width: 70, height: 70)
								.cornerRadius(12)
							
							VStack(alignment: .leading) {
								Text("Saved")
									.font(.system(size: 18, weight: .bold, design: .rounded))
								Text("Private")
									.font(.system(size: 14))
									.foregroundColor(.white.opacity(0.7))
							}
							
							// Spacer and then bookmarkButton inside sheet -> NO RECURSION PLEASE
							Spacer()
						}
						.padding([.leading], -10)
						.padding([.bottom], 20)
						.padding([.top], 50)
						
						
					}
					
				}
			}
		}
		
		
		
		
	}
}
