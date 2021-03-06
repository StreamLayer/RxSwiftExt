// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "RxSwiftExt",
    platforms: [
        .iOS(.v8), .tvOS(.v9), .macOS(.v10_11), .watchOS(.v3)
    ],
    products: [
        .library(name: "RxSwiftExt", targets: ["RxSwiftExt"]),
    ],
    dependencies: [
        .package(url: "https://github.com/StreamLayer/RxSwift.git", .upToNextMajor(from: "5.0.1-slr.3417")),
    ],
    targets: [
        .target(name: "RxSwiftExt", dependencies: ["RxSwift", "RxCocoa"], path: "Source"),
        .testTarget(name: "RxSwiftExtTests", dependencies: ["RxSwiftExt", "RxTest"], path: "Tests"),
    ],
    swiftLanguageVersions: [.v4_2, .v5]
)
