// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "WWSimpleAI_Gemini",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(name: "WWSimpleAI_Gemini", targets: ["WWSimpleAI_Gemini"]),
    ],
    dependencies: [
        .package(url: "https://github.com/William-Weng/WWSimpleAI_Ollama", from: "1.0.0")
    ],
    targets: [
        .target(name: "WWSimpleAI_Gemini", dependencies: ["WWSimpleAI_Ollama"], resources: [.copy("Privacy")]),
    ],
    swiftLanguageVersions: [
        .v5
    ]
)
