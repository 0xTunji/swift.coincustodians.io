// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "Coin Custodians",
    products: [
        .executable(name: "Coin", targets: ["Coin"])
    ],
    dependencies: [
        .package(name: "Publish", url: "https://github.com/johnsundell/publish.git", from: "0.7.0")
    ],
    targets: [
        .target(
            name: "Coin",
            dependencies: ["Publish"]
        )
    ]
)
