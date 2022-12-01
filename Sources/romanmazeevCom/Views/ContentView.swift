//
//  ContentView.swift
//  
//
//  Created by Roman Mazeev on 11/02/2023.
//

import TokamakShim

struct ContentView: View {
    enum Section: CaseIterable {
        case openSource
        case pet
        case work

        var title: String {
            switch self {
            case .openSource:
                return "Open source projects"
            case .pet:
                return "Pet projects"
            case .work:
                return "Work projects"
            }
        }

        var projects: [Project] {
            switch self {
            case .openSource:
                return OpenSourceProject.allCases.map(\.project)
            case .pet:
                return PetProject.allCases.map(\.project)
            case .work:
                return WorkProject.allCases.map(\.project)
            }
        }
    }

    // TokamakUI Picker Bug
    private let sections = Section.allCases
    @State private var selection = 0

    var body: some View {
        VStack {
            Picker("", selection: $selection) {
                Text("Select project type")
                ForEach(0..<sections.count) {
                    Text(sections[$0].title)
                }
            }

            LazyVGrid(columns: [.init(alignment: .leading)]) {
                ForEach(sections[selection].projects, id: \.title) { project in
                    ProjectView(project: project)
                        .background(Color.accentColor)
                }
            }
        }
    }
}
