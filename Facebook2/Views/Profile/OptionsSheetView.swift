//
//  OptionsSheetView.swift
//  Facebook2
//
//  Created by Paulo Sonzzini Ribeiro de Souza on 28/06/23.
//

import Foundation
import SwiftUI

struct OptionsSheetView: View {
	
	var body: some View {
		
		List {
			SheetViewListItem(imageName: "gearshape.fill", text: "Settings and privacy")
			SheetViewListItem(imageName: "arrow.up.circle.badge.clock", text: "Your activity")
			SheetViewListItem(imageName: "clock.arrow.circlepath", text: "Archive")
			SheetViewListItem(imageName: "qrcode.viewfinder", text: "QR code")
			SheetViewListItem(imageName: "bookmark", text: "Saved")
			SheetViewListItem(imageName: "person.2", text: "Supervision")
			SheetViewListItem(imageName: "creditcard", text: "Orders and payments")
			SheetViewListItem(imageName: "list.star", text: "Close Friends")
			SheetViewListItem(imageName: "star", text: "Favorites")
		}
		
	}
}

