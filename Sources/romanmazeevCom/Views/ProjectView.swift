//
//  ProjectView.swift
//  
//
//  Created by Roman Mazeev on 11/02/2023.
//

import TokamakShim

struct ProjectView: View {
    let project: Project

    var body: some View {
        if let projectURL = project.url {
            Link(destination: projectURL) {
                content
            }
        } else {
            content
        }
    }

    var content: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(project.title)
                .font(.headline)
            Text(project.description)
                .font(.subheadline)
        }
        .padding()
        .background(Color.accentColor)
        .cornerRadius(8, antialiased: true)
    }
}
