//
//  File.swift
//  HealthAppPracticeUITests
//
//  Created by Michael Runyon on 4/15/25.
//

import XCTest

class BrowseActivityPageTests: UITestBase {
    var summaryPage: SummaryPage!
    var browsePage: BrowsePage!
    var browseActivityPage: BrowseActivityPage!
    
    override func setUp() {
        super.setUp()
        summaryPage = SummaryPage(app: app)
        browsePage = BrowsePage(app: app)
        browseActivityPage = BrowseActivityPage(app: app)
        logger.log("🔍 Checking app state: \(app.state.rawValue)")
    }
    
    // Test launching the Activity categories
    
    func testActivityCategories() {
        logger.log("👆 Selecting the 'Browse' tab button.")
        summaryPage.tapBrowseTabButton()
        logger.log("👆 Selecting the 'Activity' button.")
        browsePage.clickActivityButton()
        logger.log("👆Clicking on 'Active Energy' button.")
        browseActivityPage.clickActiveEnergyButton()
        logger.log("👈 Going back to the 'Activity' page via the back button.")
        browseActivityPage.clickActivityBackButton()
        logger.log("👆Clicking on 'Active Energy' button.")
        
        
    }
    
    func testCardioFitnessButton() {
        
    }
    
    
    
}
