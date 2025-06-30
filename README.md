# SwiftTextToolkit

[![Tests](https://github.com/PalmeiraLabs/SwiftTextToolkit/actions/workflows/tests.yml/badge.svg)](https://github.com/PalmeiraLabs/SwiftTextToolkit/actions/workflows/tests.yml)
[📘 View Documentation](https://palmeiralabs.github.io/SwiftTextToolkit/)

**SwiftTextToolkit** is a lightweight and modular Swift package that provides utilities for working with text in iOS and other Swift-based platforms. It includes tools to count words and characters, and to generate slugs from strings.

Perfect for developers looking for reusable and well-tested text-processing utilities.

## ✨ Features

- `WordCounter`: Count words and characters in a string, ignoring whitespace and newlines.
- `Slugifier`: Create slugs from text with three levels of aggressiveness:
  - Fast (basic replacement)
  - Moderate (whitespace-aware)
  - Advanced (URL-friendly and cleaned)
- Fully documented with DocC.
- Built using Swift Package Manager.
- 100% Swift-native and unit-tested.

## 📦 Installation

### Using Swift Package Manager

In your `Package.swift` file, add:

```swift
dependencies: [
    .package(url: "https://github.com/PalmeiraLabs/SwiftTextToolkit.git", from: "1.0.0")
]
```

Or from Xcode:

> File → Add Packages → Paste the GitHub repository URL

## 🚀 Example Usage

```swift
import SwiftTextToolkit

let toolkit = SwiftTextToolkit()

let text = "Hello, Swift world!"

let wordCount = toolkit.wordCounter.countWords(in: text)
// → 3

let slug = toolkit.slugifier.slugifyModerate(text: text)
// → "hello,-swift-world!"
```

## 📚 Documentation

> Generated with DocC

Explore the full documentation here:  
👉 [https://palmeiralabs.github.io/SwiftTextToolkit/](https://palmeiralabs.github.io/SwiftTextToolkit/)

## 🧪 Running Tests

This package includes unit tests for all major features.  
Run tests with:

```bash
swift test
```

## 🪪 License

This project is licensed under a limited MIT-style license:

- Free to use for personal or commercial purposes.
- **Modification and redistribution of modified versions are not allowed.**
- Provided without any warranties.

See the [`LICENSE`](./LICENSE) file for more information.

## ⚠️ Disclaimer

This software is provided **"as is"**, without any express or implied warranties.  
This means:

- No guarantee it works perfectly or without bugs.  
- The author is not responsible for any damage or loss caused by its use.  
- You use this package at your own risk.

We recommend thorough testing before using it in critical projects.
