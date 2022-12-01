// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "romanmazeevCom",
    platforms: [.macOS(.v13)],
    products: [
        .executable(name: "romanmazeevCom", targets: ["romanmazeevCom"])
    ],
    dependencies: [
        .package(url: "https://github.com/TokamakUI/Tokamak", branch: "main")
    ],
    targets: [
        .executableTarget(
            name: "romanmazeevCom",
            dependencies: [
                .product(name: "TokamakShim", package: "Tokamak")
            ],
            resources: [
                .copy("Images/avatar.png"),
                .copy("Images/githubIcon.png"),
                .copy("Images/instagramIcon.png"),
                .copy("Images/linkedinIcon.png"),
                .copy("Images/twitterIcon.png")
            ]
        ),
        .testTarget(
            name: "romanmazeevComTests",
            dependencies: ["romanmazeevCom"]),
    ]
)
