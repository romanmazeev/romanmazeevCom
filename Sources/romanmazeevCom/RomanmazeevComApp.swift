import TokamakShim
import Foundation

@main
struct RomanmazeevComApp: App {
    #if os(WASI)
    static let _configuration = _AppConfiguration(reconciler: .fiber(useDynamicLayout: true))
    #endif

    var body: some Scene {
        WindowGroup("Roman Mazeev") {
            ContentView()
        }
    }
}

struct ContentView: View {
    var body: some View {
        VStack(spacing: 32) {
            Image(PersonalInfo.avatarImageName)
                .resizable()
                .frame(width: 144, height: 202)

            VStack(spacing: 24) {
                Text("Hi 👋 I’m Roman,\nSoftware Engineer")
                    .bold()
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)

                Text("Apple, open source development\nand Swift fan based in Amsterdam 🇳🇱")
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)

                Text("Currently at Lightspeed\nEx: App In The Air, Redmadrobot...")
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
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
