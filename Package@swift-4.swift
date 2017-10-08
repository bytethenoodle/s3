// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "SwiftAWSS3",
    //    exclude: ["Configuration", "Scripts"],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "SwiftAWSS3",
            targets: ["SwiftAWSS3"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/bytethenoodle/aws-sdk-swift-core.git", .upToNextMinor(from: "0.2.6"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "SwiftAWSS3",
            dependencies: ["AWSSDKSwiftCore"]
        )
    ]
)
