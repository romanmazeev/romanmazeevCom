//
//  HeaderView.swift
//  
//
//  Created by Roman Mazeev on 11/02/2023.
//

import TokamakShim
import Foundation

struct HeaderView: View {
    var body: some View {
        GeometryReader { proxy in
            if proxy.size.width > 650 {
                HStack {
                    imageView
                        .frame(height: 250)
                    descriptionView
                }
                .padding(.top)
            } else {
                VStack(spacing: 0) {
                    imageView
                        .frame(height: 200)
                    descriptionView
                }
            }
        }
    }

    var imageView: some View {
        Image(PersonalInfo.avatarImageName)
            .resizable()
            .aspectRatio(contentMode: .fit)
    }

    var descriptionView: some View {
        VStack(alignment: .leading, spacing: 0) {
            VStack(alignment: .leading, spacing: 6) {
                Text("Hi 👋")
                    .font(.title)
                    .bold()

                HStack {
                    Text("My name is")
                        .font(.title2)
                    Text(PersonalInfo.firstName)
                        .font(.title2)
                        .bold()
                }

                Text("I'm software engineer 🧑‍💻 based in Amsterdam 🇳🇱")
                    .font(.title3)
                    .padding(.bottom, 30)
            }

            Spacer()

            Link(WorkPlace.lightspeed.displayName, destination: WorkPlace.lightspeed.url)
                .foregroundColor(.red)

            HStack(spacing: 0) {
                Text("Ex:")
                    .padding(.trailing, 4)
                Link(WorkPlace.appInTheAir.displayName, destination: WorkPlace.appInTheAir.url)
                    .frame(width: 107)
                Text(",")
                    .padding(.trailing, 4)
                Link(WorkPlace.redmadrobot.displayName, destination: WorkPlace.redmadrobot.url)
                Text("...")
            }
            .padding(.bottom)

            HStack(spacing: 6) {
                SponsorButton()
                Text("or")
                Link("email me", destination: URL(string: "mailto:\(PersonalInfo.email)")!)
                    .foregroundColor(.accentColor)
            }
            .padding(.bottom)
        }
        .padding()
    }
}
