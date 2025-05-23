//
//  SummaryPageTests.swift
//  HealthAppPracticeUITests
//
//  Created by Michael Runyon on 4/14/25.
//

import XCTest

class SummaryPageTests: UITestBase {
    var summaryPage: SummaryPage!
    
    let bottomNavStressTestIterations = 5
    
    override func setUp() {
        super.setUp()
        summaryPage = SummaryPage(app: app)
        logger.log("🔍 Checking app state: \(app.state.rawValue)")
    }
    
    func testSummaryPageTabNavigation() {
        logger.log("👆 Tapping on the Sharing tab button...")
        summaryPage.tapSharingTabButton()
        logger.log("👆 Tapping on the Browse tab button...")
        summaryPage.tapBrowseTabButton()
        logger.log("👆 Tapping on the Summary tab button.")
        summaryPage.tapSummaryTabButton()
    }
    
    func testBottomNavStressTest() {
        logger.log("🚀 Starting the Bottom Navigation stress test...")
        for iteration in 1...bottomNavStressTestIterations {
            logger.log("🔍 Iteration \(iteration) - Bottom Navigation stress test.")
            logger.log("👆 Tapping on the Sharing tab button...")
            summaryPage.tapSharingTabButton()
            logger.log("👆 Tapping on the Browse tab button...")
            summaryPage.tapBrowseTabButton()
            logger.log("👆 Tapping on the Summary tab button...")
            summaryPage.tapSummaryTabButton()

        }
        logger.log("✅ Stress Test Complete: \(bottomNavStressTestIterations) iterations of Bottom Navigation tab switching.")
    }
    
    func testScrollToAppsSection() {
        logger.log("📜 Scrolling to Apps section...")
        summaryPage.scrollToAppsSection()
        
        let appsSectionHeader = app.staticTexts["Apps"]
        // Check if the "Apps" section is now visible
        XCTAssertTrue(appsSectionHeader.exists && appsSectionHeader.isHittable, "Apps section should be found after scrolling...")
        logger.log("✅ 'Apps' header is in view.")
        
    }
    
    func testScrollToArticlesSection() {
        logger.log("📜 Scrolling to Articles section...")
        summaryPage.scrollToArticlesSection()
        
        let appsSectionHeader = app.staticTexts["Articles"]
        // Check if the "Apps" section is now visible
        XCTAssertTrue(appsSectionHeader.exists && appsSectionHeader.isHittable, "Articles section should be found after scrolling...")
        logger.log("✅ 'Articles' header is in view.")
        
    }
    
    func testScrollToBottomAndBackToTop() {
        // Scroll to the bottom
        logger.log("📜 Scrolling to Apps section...")
        summaryPage.scrollToAppsSection()
        
        let appsSectionHeader = app.staticTexts["Apps"]
        // Check if the "Apps" section is now visible
        XCTAssertTrue(appsSectionHeader.exists && appsSectionHeader.isHittable, "Apps section should be found after scrolling...")
        logger.log("✅ 'Apps' header is in view.")
        
        // Scroll back to the top
        logger.log("📜 Scrolling back to the top of the page...")
        summaryPage.scrollToTopOfPage()
        let pinnedPageHeader = app.staticTexts["Pinned"]
        // Check if the "Pinned" section is now visible
        XCTAssertTrue(pinnedPageHeader.exists && pinnedPageHeader.isHittable, "Pinned section should be found after scrolling...")
        logger.log("✅ Test Complete - Successfully scrolled to the bottom and back to the top of the page.")
    }
    
    func testPinnedEditButton() {
        logger.log("👆 Tapping on Pinned 'Edit' button...")
        summaryPage.tapSummaryPagePinnedEditButton()
        sleep(2)
    }
    
    func testShowAllHealthDataButton() {
        logger.log("👆 Tapping on 'Show All Health Data' button...")
        summaryPage.tapShowAllHealthDataButton()
        sleep(2)
        XCTAssertTrue(app.staticTexts["All Health Data"].waitForExistence(timeout: 5), "'All Health Data' heading should exist")
        logger.log ("☑️ 'All Health Data' heading is visible.")
        logger.log("👈 Tapping 'Summary' button to return to main Summary page...")
        summaryPage.tapSummaryBackButton()
    }

}
