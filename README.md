# XCTAssertUnrecoverable

## Installation

`XCTAssertUnrecoverable` depends on [johnno1962/Fortify](https://github.com/johnno1962/Fortify), but it is included in this library directly to support CocoaPods, Carthage for now.

### [CocoaPods](https://guides.cocoapods.org/using/using-cocoapods.html)

```
pod 'XCTAssertUnrecoverable'
```

```bash
$ pod install
```

### [Carthage](https://github.com/Carthage/Carthage)

```
github "ukitaka/XCTAssertUnrecoverable"
```

```bash
$ carthage update
```

### [Swift Package Manager](https://github.com/apple/swift-package-manager)

```swift
let package = Package(
    name: "YourModule",
    dependencies: [
        .package(url: "https://github.com/ukitaka/XCTAssertUnrecoverable.git", "1.0.0")
    ],
    targets: [
        .target(
            name: "YourModule",
            dependencies: [ ... ]),
        .testTarget(
            name: "YourModuleTests",
            dependencies: ["XCTAssertUnrecoverable"]),
    ]
)
```

```
$ swift build
```


## Requirements

swift 4.1
