// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SomeNicePackage",
    products: [
        .library(name: "NicePackageImplementation", type: .dynamic, targets: ["NicePackageImplementation"]),
        .library(name: "NicePackageInterfacesDynamic", type: .dynamic, targets: ["NicePackageInterfaces"]),
//        .library(name: "NicePackageInterfacesStatic", type: .static, targets: ["NicePackageInterfaces"]),
    ],
    targets: [
        .target(name: "NicePackageImplementation", dependencies: ["NicePackageInterfaces"]),
        .target(name: "NicePackageInterfaces"),
    ]
)
