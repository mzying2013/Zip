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



## Quick functions

The easiest way to use Zip is through quick functions. Both take local file paths as NSURLs, throw if an error is encountered and return an NSURL to the destination if successful.

```swift
do {
    let filePath = Bundle.main.url(forResource: "file", withExtension: "zip")!
    let unzipDirectory = try Zip.quickUnzipFile(filePath) // Unzip
    let zipFilePath = try Zip.quickZipFiles([filePath], fileName: "archive") // Zip
}
catch {
  print("Something went wrong")
}
```

