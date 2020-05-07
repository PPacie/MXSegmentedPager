// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "MXSegmentedPager",
    platforms: [.iOS(.v10)],
    products: [
        .library(name: "MXSegmentedPager",
                 targets: ["MXSegmentedPager"])
    ],
    dependencies: [
        .package(url: "https://github.com/ppacie/MXPagerView.git", from: "1.0.1"),
        .package(url: "https://github.com/ppacie/MXParallaxHeader.git", from: "1.1.1"),
        .package(url: "https://github.com/ppacie/MXSegmentedControl.git", from: "1.1.1"),
    ],
    targets: [
        .target(
            name: "MXSegmentedPager",
            dependencies: [
                "MXPagerView",
                "MXParallaxHeader",
                "MXSegmentedControl"
            ], path: "MXSegmentedPager"
        )
    ],
    swiftLanguageVersions: [.v5,.v4_2],
    cLanguageStandard: .c11
)
