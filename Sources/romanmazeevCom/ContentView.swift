//
//  ContentView.swift
//  
//
//  Created by Roman Mazeev on 19/02/2023.
//

import TokamakShim
import Foundation

struct ContentView: View {
    var body: some View {
        VStack(spacing: 32) {
            Image(PersonalInfo.avatarImageName)
                .resizable()
                .frame(width: 144, height: 202)

            VStack(spacing: 24) {
                VStack(spacing: 16) {
                    Text("Hi 👋 I’m Roman,\nSoftware Engineer")
                        .bold()
                        .font(.largeTitle)
                        .multilineTextAlignment(.center)

                    Text("Apple, open source development\nand Swift fan based in Amsterdam 🇳🇱")
                        .multilineTextAlignment(.center)
                }

                VStack(spacing: 8) {
                    Link(destination: URL(string: "https://www.lightspeedhq.com")!) {
                        Text("Lightspeed")
                            .bold()
                            .foregroundColor(.red)
                    }

                    Text("Ex: App In The Air, Redmadrobot...")
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.center)
                }
            }

            VStack(spacing: 16) {
                ActionButton(color: .green, title: "Sponsor", url: PersonalInfo.githubSponsorURL)
                ActionButton(color: .accentColor, title: "Connect via Email", url: URL(string: "mailto:\(PersonalInfo.email)")!)
            }

            footerView
        }
        .padding()
    }

    var footerView: some View {
        HStack(spacing: 32) {
            ForEach(Social.allCases, id: \.self) { social in
                Link(destination: social.url) {
                    Image(social.imageName)
                        .resizable()
                        .frame(width: 32, height: 32)
                }
            }
        }
    }
}

struct ActionButton: View {
    let color: Color
    let title: String
    let url: URL

    var body: some View {
        Link(destination: url) {
            Text(title)
                .bold()
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 14, style: .continuous)
                        .frame(width: 358, height: 50)
                        .foregroundColor(color)
                )
        }
        .foregroundColor(.white)
    }
}
