# 🟦 Shapes Drawer (SwiftUI App)

A two-page iOS application built with **SwiftUI** and **MVVM architecture**, allowing users to dynamically add, edit, and manage geometric shapes on screen.

---

## 📱 Project Overview

This is a two-page SwiftUI application that allows users to dynamically manage geometric shapes on the screen.

- **Page 1 (Home View)**:  
  Users can add shapes—**Circle**, **Triangle**, or **Square**—by tapping the corresponding buttons. All added shapes are displayed in a grid layout. A **"Clear All"** button lets users remove all shapes from the view. An **"Edit Circles"** button navigates to the next page for managing only the circle shapes.

- **Page 2 (Edit Circles View)**:  
  This view exclusively displays the **Circle** shapes from the first page. Users can:
  - ➕ Add new circles
  - ➖ Remove individual circles
  - 🗑️ Delete all circles

Any changes made in the Edit Circles view are reflected back on the Home View.

---

## ✅ Features

- 🧱 **MVVM Architecture**  
  Clean separation of concerns using the Model-View-ViewModel design pattern for better scalability and maintainability.

- 🌐 **Dynamic Button Rendering via API**  
  Fetches shape data (i.e., `name` and `draw_path`) from a remote API to render shape buttons dynamically on the UI.

- ➕ **Add Shapes**  
  Users can add **Circle**, **Square**, and **Triangle** shapes to the screen with a single tap.

- 🗑️ **Remove All Shapes**  
  A **"Clear All"** option removes all added shapes instantly.

- ✏️ **Edit Circles Feature**  
  Navigate to a dedicated page to view and manage only **Circle** shapes, with support for:

  - Adding new circles
  - Removing specific circles
  - Deleting all circles

- 🔄 **Two-Way Data Binding**  
  Any updates made in the Edit Circles screen are immediately reflected on the main screen.

---

## 🛠️ Tech Stack

- SwiftUI
- MVVM
- Async/Await (for networking)
- XCTest (for unit testing)

---

## 🚀 Getting Started

1. Clone the repo
2. Open the `.xcodeproj` file in Xcode
3. Run on Simulator or Device

---

## 🧪 Tests

Unit tests for the ViewModel are available under `CricutProjectTests.swift`.

---

## 📸 Screenshots

### IOS:

![Simulator Screenshot - iPhone 16 Pro - 2025-06-18 at 12 17 15](https://github.com/user-attachments/assets/b27f921f-b3c5-47f9-9646-eaa7b68c23c1)

![Simulator Screenshot - iPhone 16 Pro - 2025-06-18 at 12 17 23](https://github.com/user-attachments/assets/d781b3c3-27f3-4463-9c68-12ccba9ffba2)


### IPAD:

![Simulator Screenshot - iPad (10th generation) - 2025-06-18 at 12 19 48](https://github.com/user-attachments/assets/fbe8d2d6-67eb-44ee-9c88-7f5b1aaf69f2)

![Simulator Screenshot - iPad (10th generation) - 2025-06-18 at 12 19 55](https://github.com/user-attachments/assets/35cb3654-b237-400e-867f-7bf56df37184)
