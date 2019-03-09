# Zip

Swift framework for zipping and unzipping files. Support Swift Package Manager.

```swift
import PackageDescription

let package = Package(
    name: "Demo",
    dependencies: [
        .package(url: "https://github.com/mzying2013/Zip.git", from: "2.0.0")
    ],
    targets: [
        .target(name: "App", dependencies: ["Zip"]),
        .testTarget(name: "AppTests", dependencies: ["App"])
    ]
)
```

