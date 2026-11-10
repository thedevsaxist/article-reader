# Article Reader

A SwiftUI app for reading articles, or listening to them read aloud. Pick up where you left off, in text or in audio.

> **Status:** Early development. The login and sign-up screens are built. Authentication and the article reading experience are not wired up yet.

## Features

### Done
- **Auth flow UI**: login and sign-up screens with a custom pill toggle that slides between the two modes (`matchedGeometryEffect` + `.snappy` animation).
- **Reusable auth components**:
  - `AuthTextField`: a labeled text field with a dark, rounded, outlined style
  - `PrimaryButton`: the full-width call-to-action button
  - `AuthModeToggle`: the segmented Log in / Sign up control
  - `FooterText`: the Terms of Service and Privacy Policy notice
- **Custom typography**: Geist for UI text and Newsreader for the decorative letter tiles.
- **Named color palette** in the asset catalog: `primary color`, `secondary text color`, `Brick`, `Teal`, `Violet`, `Olive`.

### Planned
- Log in and account creation (currently `TODO`s in the button actions)
- Article reading view (`ArticleView` is a placeholder)
- Audio playback / text-to-speech
- Reading progress sync
- Publishing articles

## Requirements

| Requirement | Version |
| --- | --- |
| Xcode | 27.2 or later |
| iOS / iPadOS / visionOS | 27.2 or later |
| Swift | 5.0 language mode |

Supported devices: iPhone, iPad, and Apple Vision Pro.

## Getting Started

1. Clone the repository:
   ```bash
   git clone <repo-url>
   cd "Article Reader"
2. Open `Article Reader.xcodeproj` in Xcode.
3. Pick a simulator or device and press ⌘R to build and run.

You don't need any third-party dependencies. The fonts ship with the project and are registered through UIAppFonts in Article-Reader-Info.plist.

Project Structure
Article Reader/
├── MyApp.swift                     # App entry point
├── ContentView.swift               # Root view (currently shows AuthView)
├── Features/
│   └── Auth/
│       ├── Views/
│       │   ├── AuthView.swift      # Owns AuthMode and switches screens
│       │   ├── LoginView.swift
│       │   └── SignUpView.swift
│       └── Components/
│           ├── AuthModeToggle.swift
│           ├── AuthTextField.swift
│           ├── FooterText.swift
│           └── PrimaryButton.swift
├── Views/
│   └── ArticleView.swift           # Placeholder article screen
├── Assets.xcassets                 # App colors and icons
├── Geist-VariableFont_wght.ttf
└── Newsreader-VariableFont_opsz,wght.ttf

Architecture

• Feature-based folders: each feature (starting with Auth) keeps its screens in Views/ and its reusable pieces in Components/.
• Single source of truth for auth mode: AuthView holds @State var mode: AuthMode and passes a Binding down to LoginView and SignUpView. The toggle in each screen writes back to that binding.
• Previews everywhere: every view has a #Preview, and views that need bindings use @Previewable @State.
