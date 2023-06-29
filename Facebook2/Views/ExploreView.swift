//
//  ExploreView.swift
//  Facebook2
//
//  Created by Paulo Sonzzini Ribeiro de Souza on 28/06/23.
//

import Foundation
import SwiftUI

struct ExploreView: View {
	
	@State var searchText: String = ""
	
	var body: some View {
		NavigationStack {
			
			ScrollView {
				
				VStack {
					Text("Content")
					Text("Content")
				}
				
			}
			
		}
		.searchable(text: $searchText)
	}
}
