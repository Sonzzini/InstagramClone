//
//  Person.swift
//  Facebook2
//
//  Created by Paulo Sonzzini Ribeiro de Souza on 28/06/23.
//

import Foundation
import SwiftUI

struct User {
	@State var imageName: String
	@State var profileName: String
	@State var profileCodeName: String
	
	var posts: Int
	var followers: Int
	var following: Int
	
	@State var description: ProfileDescription
}


var Mark = User(imageName: "profPic1", profileName: "Mark", profileCodeName: "mark_", posts: 100, followers: 214, following: 385, description: ProfileDescription(text: ""))

var YourProfile = User(imageName: "MyProfilePic", profileName: "Paulo Sonzzini", profileCodeName: "sonzii_polo", posts: 40, followers: 223, following: 310, description: ProfileDescription(myprofile: true))

var Julia = User(imageName: "JuliaProfilePic", profileName: "Julia", profileCodeName: "julia.flolivv", posts: 19, followers: 526, following: 1004, description: ProfileDescription(text: "✝️ filha do Rei\n❤️ @sonzii_polo\n⚙️ ITA T27"))

var John = User(imageName: "profPic2", profileName: "John", profileCodeName: "Jonny49", posts: 300, followers: 7823, following: 2265, description: ProfileDescription())

var Derek = User(imageName: "profPic4", profileName: "Derek", profileCodeName: "_XX_DEREK_XX_", posts: 1, followers: 10000, following: 2, description: ProfileDescription())

var Susan = User(imageName: "profPic3", profileName: "Susan", profileCodeName: "Susan", posts: 30, followers: 200, following: 350, description: ProfileDescription())
