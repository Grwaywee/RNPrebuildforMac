// swift-tools-version: 5.9
import PackageDescription

// NOTE:
//  - macOS only
//  - JSC (no Hermes): expose React_jsc instead of Hermes
//  - Explicit products so Xcode shows them as SPM products (🏠)

let package = Package(
  name: "RNPrebuildforMac",
  platforms: [
    .macOS(.v12)
  ],
  products: [
    // Core RN runtime
    .library(name: "React",           targets: ["React"]),
    .library(name: "React_jsc",       targets: ["React_jsc"]),
    .library(name: "yoga",            targets: ["yoga"]),
    .library(name: "CoreModules",     targets: ["CoreModules"]),
    .library(name: "ReactCommon",     targets: ["ReactCommon"]),
    .library(name: "jsi",             targets: ["jsi"]),
    .library(name: "cxxreact",        targets: ["cxxreact"]),
    .library(name: "glog",            targets: ["glog"]),
    .library(name: "folly",           targets: ["folly"]),
    .library(name: "fmt",             targets: ["fmt"]),
    .library(name: "SocketRocket",    targets: ["SocketRocket"]),
    .library(name: "RCTDeprecation",  targets: ["RCTDeprecation"]),

    // Common UI/feature modules (optional – add as needed in Xcode)
    .library(name: "RCTImage",        targets: ["RCTImage"]),
    .library(name: "RCTText",         targets: ["RCTText"]),
    .library(name: "RCTNetwork",      targets: ["RCTNetwork"]),
    .library(name: "RCTAnimation",    targets: ["RCTAnimation"]),
    .library(name: "RCTLinking",      targets: ["RCTLinking"]),
    .library(name: "RCTVibration",    targets: ["RCTVibration"])
  ],
  targets: [
    // Binary XCFrameworks (prebuilt)
    .binaryTarget(name: "React",           path: "Binary/React.xcframework"),
    .binaryTarget(name: "React_jsc",       path: "Binary/React_jsc.xcframework"),
    .binaryTarget(name: "yoga",            path: "Binary/yoga.xcframework"),
    .binaryTarget(name: "CoreModules",     path: "Binary/CoreModules.xcframework"),
    .binaryTarget(name: "ReactCommon",     path: "Binary/ReactCommon.xcframework"),
    .binaryTarget(name: "jsi",             path: "Binary/jsi.xcframework"),
    .binaryTarget(name: "cxxreact",        path: "Binary/cxxreact.xcframework"),
    .binaryTarget(name: "glog",            path: "Binary/glog.xcframework"),
    .binaryTarget(name: "folly",           path: "Binary/folly.xcframework"),
    .binaryTarget(name: "fmt",             path: "Binary/fmt.xcframework"),
    .binaryTarget(name: "SocketRocket",    path: "Binary/SocketRocket.xcframework"),
    .binaryTarget(name: "RCTDeprecation",  path: "Binary/RCTDeprecation.xcframework"),

    .binaryTarget(name: "RCTImage",        path: "Binary/RCTImage.xcframework"),
    .binaryTarget(name: "RCTText",         path: "Binary/RCTText.xcframework"),
    .binaryTarget(name: "RCTNetwork",      path: "Binary/RCTNetwork.xcframework"),
    .binaryTarget(name: "RCTAnimation",    path: "Binary/RCTAnimation.xcframework"),
    .binaryTarget(name: "RCTLinking",      path: "Binary/RCTLinking.xcframework"),
    .binaryTarget(name: "RCTVibration",    path: "Binary/RCTVibration.xcframework"),

    // Empty source target to satisfy SwiftPM convention (kept for compatibility)
    .target(name: "Placeholder", path: "Sources/Placeholder")
  ]
)
