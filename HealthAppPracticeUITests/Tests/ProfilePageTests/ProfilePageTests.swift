//
//  ProfilePageTests.swift
//  HealthAppPracticeUITests
//
//  Created by Michael Runyon on 4/24/25.
//

import XCTest

class ProfilePageTests: UITestBase {
    var profilePage: ProfilePage!
    var summaryPage: SummaryPage!
    
    override func setUp() {
        super.setUp()
        profilePage = ProfilePage(app: app)
        summaryPage = SummaryPage(app: app)
        logger.log("🔍 Checking app state: \(app.state.rawValue)")
    }
    
    override func tearDown() {
        logger.log("🔧 Cleaning up after test and tearing down.")
        
        super.tearDown()
        
        //XCUIDevice.shared.press(.home)
    }
    
    // Test launching the Profile page and then return to the Summary page
    
    func testProfilePage() {
        summaryPage.clickSummaryProfileButton()
        profilePage.clickProfileDoneButton()
        
    }
    
    // Test launching each category in the Profile page and then return to the Summary page
    
    func testProfileCategories() {
        summaryPage.clickSummaryProfileButton()
        
        profilePage.clickProfileHealthDetailsCell()
        UITestHelpers.waitForPage(withTitle: "Health Details", in: app)
        profilePage.clickProfileBackButton()
        
        profilePage.clickProfileMedicalIdCell()
        UITestHelpers.waitForPage(withTitle: "Medical ID", in: app)
        profilePage.clickProfileBackButton()
        
        profilePage.clickProfileHealthRecordsCell()
        UITestHelpers.waitForPage(withTitle: "Health Records", in: app)
        profilePage.clickProfileBackButton()
        
        profilePage.clickProfileNotificationsCell()
        UITestHelpers.waitForPage(withTitle: "Notifications", in: app)
        profilePage.clickProfileBackButton()
        
        profilePage.clickProfileOrganDonationCell()
        UITestHelpers.waitForPage(withTitle: "Organ Donation", in: app)
        profilePage.clickProfileBackButton()
        
        profilePage.clickProfileAppsCell()
        UITestHelpers.waitForPage(withTitle: "Apps", in: app)
        profilePage.clickProfileBackButton()
        
        profilePage.clickProfileResearchStudiesCell()
        UITestHelpers.waitForPage(withTitle: "Research Studies", in: app)
        profilePage.clickProfileBackButton()
        
        profilePage.clickProfileDevicesCell()
        UITestHelpers.waitForPage(withTitle: "Devices", in: app)
        profilePage.clickProfileBackButton()
        
        profilePage.clickProfileDoneButton()
    }
    
    func testExportAllHealthDataButton() {
        summaryPage.clickSummaryProfileButton()
        profilePage.clickExportAllHealthButton()
        profilePage.clickExportAllHealthPopupCancelButton()
    }

    
    
}
