//
//  FooterView.swift
//  
//
//  Created by Roman Mazeev on 11/02/2023.
//

import TokamakShim

struct FooterView: View {
    var body: some View {
        HStack(spacing: 4) {
            ForEach(Social.allCases, id: \.self) { social in
                Link(destination: social.url) {
                    Image(social.imageName)
                        .resizable()
                        .frame(width: 30, height: 30)
                }
            }
        }
    }
}
