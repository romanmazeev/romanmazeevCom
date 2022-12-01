//
//  Project.swift
//  
//
//  Created by Roman Mazeev on 11/02/2023.
//

import Foundation

struct Project {
    let title: String
    let description: String
    let url: URL?
}

enum OpenSourceProject: CaseIterable {
    case mrzScanner
    case mrzParser

    var project: Project {
        switch self {
        case .mrzScanner:
            return .init(
                title: "MRZ Scanner",
                description: "Library for scanning documents via MRZ (Machine Readable Zones) using  Vision API",
                url: URL(string: "https://github.com/romanmazeev/MRZScanner")
            )
        case .mrzParser:
            return .init(
                title: "MRZ Parser",
                description: "MRZ (Machine Readable Zones) code parser for TD1 (ID cards), TD2, TD3 (Passports), MRVA (Visas type A), MRVB (Visas type B) types.",
                url: URL(string: "https://github.com/romanmazeev/MRZParser")
            )
        }
    }
}

enum PetProject: CaseIterable {
    case romanmazeevCom
    case diffuser
    case metary
    case draws
    case imageStyler

    var project: Project {
        switch self {
        case .romanmazeevCom:
            return .init(
                title: "romanmazeevCom",
                description: "Personal website written in Swift using TokamakUI",
                url: URL(string: "https://github.com/romanmazeev/MRZScanner")
            )
        case .diffuser:
            return .init(
                title: "Diffuser",
                description: "An app that generates images for news headlines using StableDiffusion.",
                url: nil
            )
        case .metary:
            return .init(
                title: "Metary",
                description: "Web3 app, which allows you to purchase AR objects in the real world",
                url: nil
            )
        case .draws:
            return .init(
                title: "Draws",
                description: "An app that recognize drawings with the possibility of personalization for the user",
                url: URL(string: "https://github.com/romanmazeev/Draws")!
            )
        case .imageStyler:
            return .init(
                title: "Image Styler",
                description: "An app that applying one of the proposed styles to selected image",
                url: URL(string: "https://apps.apple.com/us/app/image-styler/id1506490993")!
            )
        }
    }
}

enum WorkProject: CaseIterable {
    case restaurantsPos

    case appInTheAir

    case memoris
    case ikanoBank
    case toYou

    case reachView3

    case areopad

    var project: Project {
        switch self {
        case .restaurantsPos:
            return .init(
                title: "‎Lightspeed Restaurant POS (K)",
                description: "Imagine upgrading every single aspect of your restaurant with a simple touch. We’re talking quicker service, increased profits and simplified workflows for your front and back of house. Lightspeed Restaurant (K Series) lets you run your entire restaurant via iPad from anywhere.",
                url: URL(string: "https://apps.apple.com/gb/app/lightspeed-restaurant-pos-k/id1486190847")!
            )
        case .appInTheAir:
            return .init(
                title: "App in the Air",
                description: "App in the Air: Your Go-To Travel App. Editors Choice ◆◆ Best of 2018 Watch app ◆◆ Featured in Forbes, Wired, CBS News, Travel+Leisure and more. App in the Air is the single place to track your itineraries, boarding passes and manage your miles across airlines",
                url: URL(string: "https://apps.apple.com/us/app/app-in-the-air-flights-hotels/id527299553")!
            )
        case .memoris:
            return .init(
                title: "Memoris",
                description: "Memoirs is a logging framework for Swift apps and more.",
                url: URL(string: "https://github.com/redmadrobot-spb/memoirs-ios")!
            )
        case .ikanoBank:
            return .init(
                title: "IKANO Bank",
                description: "Banking app",
                url: nil
            )
        case .toYou:
            return .init(
                title: "ToYou",
                description: "Your city’s restaurants and stores. Brought to you with a single tap. A seamless experience designed and constantly improved to bring all the goods and services you need closer to you.",
                url: URL(string: "https://apps.apple.com/us/app/toyou-delivery-more/id1196302015")!
            )
        case .reachView3:
            return .init(
                title: "Emlid Flow",
                description: "Emlid Flow is a completely rebuilt native mobile app to work with Reach receivers. Now the app supports thousands of coordinate systems.",
                url: URL(string: "https://apps.apple.com/us/app/reachview-3/id1463967138")!
            )
        case .areopad:
            return .init(
                title: "Areopad",
                description: "Areopad by Digital Design is a board management software aimed at automating board governance and optimizing board meetings.",
                url: URL(string: "https://areopad.net")!
            )
        }
    }
}
