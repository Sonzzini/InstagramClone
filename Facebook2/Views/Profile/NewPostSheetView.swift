//
//  NewPostSheetView.swift
//  Facebook2
//
//  Created by Paulo Sonzzini Ribeiro de Souza on 28/06/23.
//

import Foundation
import SwiftUI

struct NewPostSheetView: View {
	var body: some View {
		NavigationStack {
			List {
				SheetViewListItem(imageName: "play.square.stack", text: "Reel")
				SheetViewListItem(imageName: "squareshape.split.3x3", text: "Post")
				SheetViewListItem(imageName: "plus.square.dashed", text: "Story")
				SheetViewListItem(imageName: "heart.square", text: "Story highlight")
				SheetViewListItem(imageName: "antenna.radiowaves.left.and.right.circle", text: "Live")
				SheetViewListItem(imageName: "map.fill", text: "Guide")
			}
			.navigationTitle("Create")
			.navigationBarTitleDisplayMode(.inline)
		}
	}
}
