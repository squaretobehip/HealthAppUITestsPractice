//
//  UITestBase.swift
//  HealthAppPracticeUITests
//
//  Created by Michael Runyon on 4/14/25.
//

import XCTest

// Base test class that all test cases inherit from
class UITestBase: XCTestCase {
    var app: XCUIApplication!
    let logger = Logger() // Initialize the Logger
    
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
            
        if app == nil {
            app = XCUIApplication(bundleIdentifier: "com.apple.Health")
        }
            
        if app.state != .notRunning {
            logger.log("🔴 Terminating existing app instance")
            app.terminate()
        }

        logger.log("🚀 Launching the app")
        app.launch()
            
        logger.log("🟢 App Launched Successfully")
    }
    
    override func tearDown() {
        // Log test completion
        logger.log("🏁 Test Completed")
        
        // Terminate the app to reset any state between tests
        if app.state != .notRunning {
            app.terminate()
        }
        
        super.tearDown()
    }
    
    func scrollAndTap(_ element: XCUIElement, maxScrolls: Int = 10) {
        var attempts = 0
        while !element.exists && attempts < maxScrolls {
            app.swipeUp()
            sleep(1) // Gives the UI a sec to settle
            attempts += 1
        }
        
        XCTAssertTrue(element.exists, "Failed to find element after scrolling.")
        element.tap()
    }
}
