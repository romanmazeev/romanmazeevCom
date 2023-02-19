// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "romanmazeevCom",
    platforms: [.macOS(.v13)],
    products: [
        .executable(name: "romanmazeevCom", targets: ["romanmazeevCom"])
    ],
    dependencies: [
        .package(url: "https://github.com/TokamakUI/Tokamak", branch: "fiber/view-support")
    ],
    targets: [
        .executableTarget(
            name: "romanmazeevCom",
            dependencies: [
                .product(name: "TokamakShim", package: "Tokamak")
            ],
            resources: [
                .copy("Images/avatar.png"),
                .copy("Images/githubIcon.svg"),
                .copy("Images/instagramIcon.svg"),
                .copy("Images/linkedinIcon.svg"),
                .copy("Images/twitterIcon.svg"),
                .copy("Images/favicon.ico"),
            ]
        ),
        .testTarget(
            name: "romanmazeevComTests",
            dependencies: ["romanmazeevCom"]),
    ]
)
