// swift-tools-version: 5.9
import PackageDescription
import Foundation
let fm = FileManager.default
let bins = (try? fm.contentsOfDirectory(atPath: "Binary"))?.filter{ $0.hasSuffix(".xcframework") } ?? []
let targets: [Target] = bins.map { .binaryTarget(name: $0.replacingOccurrences(of: ".xcframework", with: ""), path: "Binary/\($0)") }
let package = Package(
  name: "OwluRNMacBinaries",
  platforms: [.macOS(.v13)],
  products: targets.map { .library(name: $0.name, targets: [$0.name]) },
  targets: targets + [.target(name: "Placeholder", path: "Sources/Placeholder")]
)
