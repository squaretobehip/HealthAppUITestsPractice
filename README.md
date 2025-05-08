# 📱 iOS Health App UI Testing with XCUITest

Welcome to my personal iOS UI automation project! This repo is where I’m building a foundation in writing automated UI tests using **XCUITest**.  I'm using the Health app in the iOS simulator. I'm learning by doing — this is a work-in-progress project where I'm exploring:

- App launch performance measurement  
- Simulating user interactions through Page Object patterns  
- Managing simulator state between tests  
- Logging and debugging techniques  
- Writing maintainable and scalable test code
- Trying to learn best practices (this is where you can help!)  
 
---

## 🚀 Why This Project?

As someone bootstrapping their way into iOS test automation, I wanted a real-world playground to:

- Deepen my understanding of **Xcode UI testing**
- Practice test structure, launch metrics, and UI validation
- Experiment with the simulator tools
- Learn how to organize tests using **Page Object Model**

This is **not** a production framework — it's a **learning lab** where I’m experimenting, testing boundaries, and documenting my growth. 

---

## 🧱 Tech Stack

- **Language:** Swift  
- **Testing Framework:** XCUITest  
- **IDE:** Xcode  
- **Target App:** `com.apple.Health`  
- **Simulator Tools:** Built-In  

---

## 🔍 What You'll Find Here

- `UITestBase.swift`: Sets up the base environment, launches the app, and handles cleanup  
- `Logger.swift`: Lightweight logging utility to keep track of test flow
- `UITestHelpers.swift`: Helper methods for scrolling, tapping, and element waits
- `PageObjects/`: Page-style test files for modularity and clarity  
- `AppLaunchTests.swift`: Experiments with app performance and repeated launches  

---

## 🤖 Cool Stuff I’ve Learned Along the Way

- How to **measure app launch time** using `XCTApplicationLaunchMetric`  
- How to **reset simulator data** using `xcrun simctl erase`  
- Structuring tests for **readability and reusability**
- Finding elements through the **Accessibility Inspector**
- The gotchas of working with system apps like Health (hint: they retain state!)  

---

## 🧪 To Run the Tests

1. Open the project in Xcode  
2. Select a simulator (I’ve been testing on iPhone 16 Pro)  
3. Hit ⌘U to run the tests  

---

## 🗺️ Next Up

- Add launch argument handling  
- Expand page object coverage  
- Integrate test result logging/output to file  
- Experiment with XCTest Plans  

---

## 🙌 A Note

Be kind. This is a learning project. If you spot improvements or want to share advice, I’d love to hear from you! 

---
