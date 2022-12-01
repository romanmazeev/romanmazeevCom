//
//  File.swift
//  
//
//  Created by Roman Mazeev on 11/02/2023.
//

import Foundation

enum WorkPlace {
    case lightspeed
    case appInTheAir
    case redmadrobot

    var displayName: String {
        switch self {
        case .lightspeed:
            return "Lightspeed"
        case .appInTheAir:
            return "App In The Air"
        case .redmadrobot:
            return "Redmadrobot"
        }
    }

    var url: URL {
        switch self {
        case .lightspeed:
            return URL(string: "https://www.lightspeedhq.com")!
        case .appInTheAir:
            return URL(string: "http://appintheair.mobi/")!
        case .redmadrobot:
            return URL(string: "http://redmadrobot.com/")!
        }
    }
}
