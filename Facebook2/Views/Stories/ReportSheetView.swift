//
//  ReportSheetView.swift
//  Facebook2
//
//  Created by Paulo Sonzzini Ribeiro de Souza on 27/06/23.
//

import Foundation
import SwiftUI

struct CenterModifier: ViewModifier {
	func body(content: Content) -> some View {
		HStack {
			Spacer()
			content
			Spacer()
		}
	}
}

struct ReportSheetView: View {
	
	@Environment(\.dismiss) private var dismiss
	
	var body: some View {
		List {
			Button {
				//
			} label: {
				Text("Report")
					.foregroundColor(.red)
			}.modifier(CenterModifier())
			
			Button {
				//
			} label: {
				Text("Turn on story notifications")
					.foregroundColor(.blue)
			}.modifier(CenterModifier())

			Button {
				//
			} label: {
				Text("Mute")
					.foregroundColor(.blue)
			}.modifier(CenterModifier())

			Button {
				//
			} label: {
				Text("Unfollow")
					.foregroundColor(.blue)
			}.modifier(CenterModifier())


		}.scrollDisabled(true)
			.listStyle(.plain)
			.cornerRadius(12)

		
		List {
			
			Button {
				dismiss()
			} label: {
				Text("Cancel")
					.foregroundColor(.white)
			}.modifier(CenterModifier())
			
		}.listStyle(.plain)
			.cornerRadius(12)
			.scrollDisabled(true)
		
	}
}
