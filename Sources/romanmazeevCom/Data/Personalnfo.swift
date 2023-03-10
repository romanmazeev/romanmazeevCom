//
//  PersonalInfo.swift
//  
//
//  Created by Roman Mazeev on 11/02/2023.
//

import Foundation

enum PersonalInfo {
    static let firstName = "Roman"
    static let lastName = "Mazeev"
    static var fullName: String {
        firstName + " " + lastName
    }
    static let email = "me@romanmazeev.com"
    static let avatarImageName = "avatar.png"
    static let githubSponsorURL = URL(string: "https://github.com/sponsors/romanmazeev")!
}
