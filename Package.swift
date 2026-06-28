// swift-tools-version: 5.9
import PackageDescription
import AppleProductTypes

let package = Package(
    name: "MyApp",
    platforms: [
        .iOS(.v17)
    ],
    products: [
        .iOSApplication(
            name: "MyApp",
            targets: ["AppSource"],
            bundleIdentifier: "com.freecompiler.myapp",
            teamIdentifier: "0000000000",
            displayVersion: "1.0",
            bundleVersion: "1",
            supportedDeviceFamilies: [.pad, .iPhone], // <-- Fixed capital P here
            supportedInterfaceOrientations: [.portrait, .landscapeLeft, .landscapeRight]
        )
    ],
    targets: [
        .executableTarget(
            name: "AppSource",
            path: "Sources"
        )
    ]
)
