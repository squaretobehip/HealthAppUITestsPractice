//
//  UITestHelpers.swift
//  HealthAppPracticeUITests
//
//  Created by Michael Runyon on 4/25/25.
//

import XCTest

class UITestHelpers {
    
    //MARK: - Tap any UI element
    
    static func tapElement(_ element: XCUIElement, logMessage: String? = nil) {
        // let logger = Logger()
        
        // Log the action (if a logMessage is provided)
        if let message = logMessage {
            NSLog(message)
        }
        
        // Wait for the element to exist
        XCTAssertTrue(
            element.waitForExistence(timeout: 5),
            "❌ Failed to find tappable element with identifier: \(element)"
        )
        
        // Tap the element
        element.tap()
    }
    
    //MARK: - Wait for page
    
    static func waitForPage(withTitle title: String, in app: XCUIApplication, timeout: TimeInterval = 5.0) {
        let navBar = app.navigationBars[title]
        let headerText = app.staticTexts[title]
        let exists = navBar.waitForExistence(timeout: timeout) || headerText.waitForExistence(timeout: timeout)
        XCTAssertTrue(exists, "❌ Failed to navigate to page with title: \(title)")
    }
    
    //MARK: - Makes app state readable
    
    static func readableAppState(_ state: XCUIApplication.State) -> String {
        switch state {
        case .notRunning:
            return "Not Running (0)"
        case .runningBackground:
            return "Running in Background (1)"
        case .runningForeground:
            return "Running in Foreground (2)"
        case .runningBackgroundSuspended:
            return "Background Suspended (4)"
        default:
            return "Unknown State (\(state.rawValue))"
        }
    }
    
}
