//
//  SummaryPage.swift
//  HealthAppPracticeUITests
//
//  Created by Michael Runyon on 4/14/25.
//

import XCTest

class SummaryPage {
    let app: XCUIApplication
    
    init(app: XCUIApplication) {
        self.app = app
    }
    
    // MARK: - Headings
    
    var summaryHeading: XCUIElement {
        return app.staticTexts["Summary"]
    }
    
    var appsSectionHeader: XCUIElement {
        return app.staticTexts["Apps"]
    }
    
    // MARK: - Buttons
    
    var summaryProfileButton: XCUIElement {
        return app.buttons["Profile"]
    }
    
    var profileDoneButton: XCUIElement {
        return app.buttons["Done"]
    }
    
    var summaryTabButton: XCUIElement {
        return app.tabBars.buttons["Summary"]
    }
    
    var sharingTabButton: XCUIElement {
        return app.tabBars.buttons["Sharing"]
    }
    
    var BrowseTabButton: XCUIElement {
        return app.tabBars.buttons["Browse"]
    }
    
    var summaryPageBottomCell: XCUIElement {
        return app.cells["Glow Eve Period Tracker, Ovulation & Flow App"]
    }
    
    var pinnedEditButton: XCUIElement {
        return app.buttons["UIA.Health.Pinned.Detail"]
    }
    
    var showAllHealthDataButton: XCUIElement {
        return app.cells["UIA.Health.ShowAllHealthData"]
    }
    
    // This 'Summary' button is a back button to return to Summary page:
    
    var summaryBackButton: XCUIElement {
        return app.navigationBars.buttons["Summary"]
    }
    
    // MARK: - Actions
    
    func tapSummaryProfileButton() {
        XCTAssert(summaryProfileButton.waitForExistence(timeout: 5), "The 'Profile' button does not exist.")
        summaryProfileButton.tap()
    }
    
    func tapProfileDoneButton() {
        XCTAssert(profileDoneButton.waitForExistence(timeout: 5), "The 'Done' button does not exist.")
        profileDoneButton.tap()
    }
    
    func tapSummaryTabButton() {
        XCTAssert(summaryTabButton.waitForExistence(timeout: 5), "The 'Summary' tab button does not exist.")
        summaryTabButton.tap()
    }
    
    func tapSharingTabButton() {
        XCTAssert(sharingTabButton.waitForExistence(timeout: 5), "The 'Sharing' tab button does not exist.")
        sharingTabButton.tap()
    }
    
    func tapBrowseTabButton() {
        XCTAssert(BrowseTabButton.waitForExistence(timeout: 5), "The 'Browse' tab button does not exist.")
        BrowseTabButton.tap()
    }
    
    func tapSummaryPagePinnedEditButton() {
        XCTAssert(pinnedEditButton.waitForExistence(timeout: 5), "The 'Pinned' edit button does not exist.")
        pinnedEditButton.tap()
    }
    
    func tapShowAllHealthDataButton() {
        XCTAssert(showAllHealthDataButton.waitForExistence(timeout: 5), "The 'Show All Health Data' button does not exist.")
        showAllHealthDataButton.tap()
    }
    
    func tapSummaryBackButton() {
        XCTAssert(summaryBackButton.waitForExistence(timeout: 5), "The 'Summary' back button does not exist.")
        summaryBackButton.tap()
    }
    
    func scrollToAppsSection() {
        
        let appsSectionHeader = app.staticTexts["Apps"] // The "Apps" heading
        
        // Swipe up until the "Apps" section is visible
        while !appsSectionHeader.exists || !appsSectionHeader.isHittable {
            app.swipeUp()  // Scroll up to reveal more content
            sleep(1) // Optional: adjust sleep if necessary for smoother scrolling
        }
    }
    func scrollToTopOfPage() {
        
        let summaryHeader = app.staticTexts["Pinned"]
        
        while !summaryHeader.exists && !summaryHeader.isHittable {
            app.swipeDown()
            sleep(1)
        }
    
    }
    
    func scrollToArticlesSection() {
        
        let appsSectionHeader = app.staticTexts["Articles"] // The "Articles" heading
        
        // Swipe up until the "Articles" section is visible
        while !appsSectionHeader.exists || !appsSectionHeader.isHittable {
            app.swipeUp()  // Scroll up to reveal more content
            sleep(1) // Optional: adjust sleep if necessary for smoother scrolling
        }
        
    }
}
