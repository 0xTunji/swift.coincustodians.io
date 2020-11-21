// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "Sightuary",
    products: [
        .executable(name: "Sightuary", targets: ["Sightuary"])
    ],
    dependencies: [
        .package(url: "https://github.com/johnsundell/publish.git", from: "0.7.0")
    ],
    targets: [
        .target(
            name: "Sightuary",
            dependencies: ["Publish"]
        )
    ]
)
