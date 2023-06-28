//
//  Person.swift
//  Facebook2
//
//  Created by Paulo Sonzzini Ribeiro de Souza on 28/06/23.
//

import Foundation
import SwiftUI

struct User {
	var imageName: String
	var profileName: String
	var profileCodeName: String
	
	var posts: Int
	var followers: Int
	var following: Int
}


var Mark = User(imageName: "profPic1", profileName: "Mark", profileCodeName: "mark_", posts: 100, followers: 214, following: 385)
var YourProfile = User(imageName: "MyProfilePic", profileName: "Paulo Sonzzini", profileCodeName: "sonzii_polo", posts: 40, followers: 223, following: 310)
var Julia = User(imageName: "", profileName: "Julia", profileCodeName: "julia.flolivv", posts: 19, followers: 526, following: 1004)
