//
//  Socials.swift
//  
//
//  Created by Roman Mazeev on 11/02/2023.
//

import Foundation

enum Social: CaseIterable {
    case github
    case linkedin
    case twitter
    case instagram

    var imageName: String {
        switch self {
        case .github:
            return "githubIcon.svg"
        case .linkedin:
            return "linkedinIcon.svg"
        case .twitter:
            return "twitterIcon.svg"
        case .instagram:
            return "instagramIcon.svg"
        }
    }

    var url: URL {
        switch self {
        case .github:
            return URL(string: "http://github.com/romanmazeev")!
        case .linkedin:
            return URL(string: "https://www.linkedin.com/in/romanmazeev/")!
        case .twitter:
            return URL(string: "https://twitter.com/romanmazeev")!
        case .instagram:
            return URL(string: "https://www.instagram.com/romanmazeev/")!
        }
    }
}
