<div align="center">

# Wheels Way (Challenge 10)

[![iOS](https://img.shields.io/badge/iOS-16%2B-000000?logo=apple)](https://developer.apple.com/ios/)
[![iPadOS](https://img.shields.io/badge/iPadOS-16%2B-000000?logo=apple)](https://developer.apple.com/ipados/)
[![Swift](https://img.shields.io/badge/Swift-6-F05138?logo=swift&logoColor=white)](https://swift.org)
[![SwiftUI](https://img.shields.io/badge/SwiftUI-Framework-0A84FF?logo=swift&logoColor=white)](https://developer.apple.com/xcode/swiftui/)
[![License](https://img.shields.io/badge/License-MIT-green)](LICENSE)

An interactive narrative experience built for the Swift Student Challenge, presenting the chronological history of automobiles through rich media, historical context, and spatial audio.

</div>

## Table of Contents

- [About](#about)
- [Features](#features)
- [Screenshots](#screenshots)
- [Built With](#built-with)
- [Getting Started](#getting-started)
- [Project Structure](#project-structure)
- [Author](#author)
- [License](#license)

## About

**Wheels Way** was developed as an entry for the Apple Swift Student Challenge. The application is designed to convey the history of automobiles in an immersive, educational, and engaging way. Through an interactive chronological timeline, users explore major engineering breakthroughs—from Nicolas-Joseph Cugnot's 1770 steam fardier to Karl Benz's 1886 Patent-Motorwagen—accompanied by historical context, inventor biographies, and authentic vehicle soundscapes.

The project is built entirely in Swift Playgrounds (`.swiftpm`) using modern Swift 6 paradigms and SwiftUI, offering an adaptive layout tailored for both iPad and iPhone.

## Features

- **Interactive Chronological Timeline:** Navigate through key milestones in automotive innovation with detailed contextual storytelling.
- **Multimodal Content Cards:** Explore historical photos, technical specs, inventor biographies, and archival records.
- **Authentic Audio Playback:** Listen to engine soundscapes and narrated historical segments powered by AVFoundation.
- **Adaptive Split-View Architecture:** Responsive sidebar navigation on iPadOS and intuitive stacked navigation on iOS.
- **Native SwiftUI Animations:** Fluid transitions, card expansions, and accessible typography.

## Screenshots

| Welcome Screen | Timeline & Vehicle Detail | Historical Context & Inventor |
| :---: | :---: | :---: |
| <img src="https://github.com/user-attachments/assets/91e291a4-e466-4598-a6d4-3c939611b839" width="260" alt="Welcome Screen"/> | <img src="https://github.com/user-attachments/assets/a31b1a44-a291-4373-8ad8-21375120fb5d" width="260" alt="Vehicle Detail Card"/> | <img src="https://github.com/user-attachments/assets/6f3696d0-52c5-46e1-b549-bcc703774ca8" width="260" alt="Historical Context"/> |

## Built With

- **Swift 6** with modern Swift Concurrency
- **SwiftUI** for declarative user interfaces and adaptive multiplatform navigation
- **AVFoundation** for sound playback and audio management
- **Apple Swift Playgrounds Package** (`.swiftpm`) format

## Getting Started

### Requirements

- Xcode 15+ (or Swift Playgrounds 4.4+ on iPadOS / macOS)
- macOS 13+ or iPadOS / iOS 16+

### Installation & Run

```bash
git clone https://github.com/hyauss/WheelsWay.git
cd WheelsWay
open "Wheels Way.swiftpm"
```

In Xcode or Swift Playgrounds, select an iPad or iPhone simulator (or physical device) and press **Run** (`Cmd + R`).

## Project Structure

```
Wheels Way.swiftpm/
├── Package.swift               Package manifest and target configuration
├── MyApp.swift                 App entry point
├── ContentView.swift           Root navigation and split-view coordinator
├── Model/
│   ├── ContentItemModel.swift  Historical entry data model
│   └── SideBarSelectionModel.swift Navigation state representation
├── ViewModel/
│   ├── SideBarViewModel.swift  Catalog data and selection logic
│   └── SoundManagerViewModel.swift Audio playback and sound state
├── View/
│   ├── WelcomeView.swift       Introductory splash view
│   ├── SidebarView.swift       Navigation sidebar
│   └── DetailPageCardView.swift Milestone detail cards and audio controls
├── Resources/                  Audio files (.m4a)
└── Media.xcassets/             Historical imagery, flags and assets
```

## Author

<div align="center">
  <table>
    <tr>
      <td align="center" width="25%">
        <a href="https://github.com/hyauss"><img src="https://github.com/hyauss.png" width="90" alt="Vinicius Marques"/></a>
        <br/><sub><b>Vinicius Marques</b></sub><br/><br/>
        <a href="https://github.com/hyauss"><img src="https://skillicons.dev/icons?i=github" alt="GitHub"/></a>
        <a href="https://www.linkedin.com/in/vinicius-marques-966918274/"><img src="https://skillicons.dev/icons?i=linkedin" alt="LinkedIn"/></a>
      </td>
    </tr>
  </table>
</div>

## License

Released under the [MIT License](LICENSE). Copyright (c) 2026 Vinicius Marques.
