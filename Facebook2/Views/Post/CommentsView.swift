//
//  CommentsView.swift
//  Facebook2
//
//  Created by Paulo Sonzzini Ribeiro de Souza on 30/06/23.
//

import Foundation
import SwiftUI

struct CommentsView: View {
	var body: some View {
		NavigationStack {
			ScrollView {
				VStack(alignment: .leading) {
					Text("CONTENT")
					Spacer()
				}
			}
			.toolbar {
				
				ToolbarItemGroup(placement: .principal) {
					VStack {
						Text("Comments")
							.font(.system(size: 18, weight: .bold, design: .rounded))
							.padding([.bottom], 10)
							.padding([.top], 50)
						Divider()
					}
				}
				
			}
		}
	}
}
