// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "NotificationBannerSwift",
    platforms: [
        .iOS(.v10)
    ],
    products: [
        .library(name: "NotificationBannerSwift", targets: ["NotificationBannerSwift"])
    ],
    dependencies: [
        .package(url: "https://github.com/Iron-Ham/SnapKit", .revision("7e869d8781c9b2f0c2b00c811aaf6ec8736aff2a")),
        .package(url: "https://github.com/cbpowell/MarqueeLabel", from: "4.0.1")
    ],
    targets: [
        .target(
            name: "NotificationBannerSwift",
            dependencies: [.byName(name: "MarqueeLabel"), .product(name: "SnapKit-Dynamic", package: "SnapKit")],
            path: "NotificationBanner/Classes"
        )
    ],
    swiftLanguageVersions: [.v5]
)
