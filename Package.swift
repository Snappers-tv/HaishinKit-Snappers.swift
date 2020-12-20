// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "HaishinKit",
    platforms: [
        .iOS(.v9),
        .tvOS(.v10),
        .macOS(.v10_11)
    ],
    products: [
        .library(name: "HaishinKit", type: .dynamic, targets: ["HaishinKit"])
    ],
    dependencies: [
      
    ],
    targets: [
        .target(name: "SwiftPMSupport"),
        .target(name: "HaishinKit", dependencies: ["Logboard", "SwiftPMSupport"],
                path: "Sources",
                sources: [
                    "Codec",
                    "Extension",
                    "FLV",
                    "HTTP",
                    "ISO",
                    "Media",
                    "Net",
                    "PiP",
                    "RTMP",
                    "Util",
                    "Platforms"
                ])
    ]
)
