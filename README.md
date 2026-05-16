# 🔲 LazyVGrid SwiftUI
A hands-on SwiftUI project demonstrating how to build performant, flexible grid layouts using `LazyVGrid`.

---

## 🤔 What this is
This project shows two real-world `LazyVGrid` patterns in SwiftUI: a sectioned two-column grid with pinned sticky headers (like a calendar or grouped list), and an adaptive photo grid that automatically adjusts its column count to fit any screen size. Each view is heavily commented so you can follow exactly what every modifier does and why.

## ✅ Why you'd use it
- **Sticky section headers** — `pinnedViews: [.sectionHeaders]` keeps month labels visible as you scroll through grouped content
- **Adaptive columns** — `GridItem(.adaptive(minimum:))` auto-calculates the column count so your grid looks great on any device without hardcoding
- **Lazy rendering** — cells are created only as they scroll into view, keeping memory usage low even with large data sets

## 📺 Watch on YouTube
[![Watch on YouTube](https://img.shields.io/badge/YouTube-Watch%20the%20Tutorial-red?style=for-the-badge&logo=youtube)](https://youtu.be/subP67bO3Ic)

> This project was built for the [NoahDoesCoding YouTube channel](https://www.youtube.com/@NoahDoesCoding97).

---

## 🚀 Getting Started

### 1. Clone the repo
```bash
git clone https://github.com/NDCSwift/LazyVGrid_SwiftUI.git
```

### 2. Open in Xcode
```
LazyVGrid_SwiftUI.xcodeproj
```

### 3. Set your Team
In **Signing & Capabilities**, select your Apple Developer team (a free account works for simulator builds).

### 4. Set your Bundle ID
Change `com.yourname.LazyVGrid-SwiftUI` to a unique reverse-domain identifier before running on a physical device.

---

## 🛠️ Notes
- `ContentView` — 2-column grid split into monthly sections with pinned headers
- `PhotoGridView` — adaptive grid of 80 color tiles mimicking the iOS Photos layout
- No third-party dependencies — pure SwiftUI

## 📦 Requirements
| | |
|---|---|
| Xcode | 15.0+ |
| iOS | 17.0+ |
| Swift | 5.9+ |

---

📺 [Watch the guide on YouTube](https://youtu.be/subP67bO3Ic)
