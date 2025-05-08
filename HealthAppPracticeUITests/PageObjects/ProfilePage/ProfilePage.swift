//
//  ProfilePage.swift
//  HealthAppPracticeUITests
//
//  Created by Michael Runyon on 4/24/25.
//

import XCTest

class ProfilePage {
    let app: XCUIApplication
    
    init(app: XCUIApplication) {
        self.app = app
    }
    
    // MARK: - Headings
    
    
    
    
    
    // MARK: - Buttons
    
    var profileDoneButton: XCUIElement {
        return app.buttons["Done"]
    }
    
    // Button labeled "Profile" is actually the Back button from subpages like Health Details, etc.
    
    var profileBackButton: XCUIElement {
        return app.navigationBars.element(boundBy: 0).buttons["Profile"]
    }
    
    var exportAllHealthPopUpCancelButton: XCUIElement {
        return app.buttons["Cancel"]
    }
    
    // MARK: - Cells (Table Views / List Elements)
    
    var profileHealthDetailsCell: XCUIElement {
        return app.cells["Health Details"]
    }
    
    var profileMedicalIdCell: XCUIElement {
        return app.cells["Medical ID"]
    }
    
    var profileHealthRecordsCell: XCUIElement {
        return app.cells["Health Records"]
    }
    
    var profileNotificationsCell: XCUIElement {
        return app.cells["Notifications"]
    }
    
    var profileOrganDonationCell: XCUIElement {
        return app.cells["Organ Donation"]
    }
    
    var profileAppsCell: XCUIElement {
        return app.cells["Apps"]
    }
    
    var profileResearchStudiesCell: XCUIElement {
        return app.cells["Research Studies"]
    }
    
    var profileDevicesCell: XCUIElement {
        return app.cells["Devices"]
    }
    
    var exportAllHealthButton: XCUIElement {
        return app.cells["Export All Health Data"]
    }
    
    // MARK: - Actions
    
    func clickProfileDoneButton() {
        UITestHelpers.tapElement(profileDoneButton, logMessage: "👆 Tapping on Done button.")
    }
    
    func clickProfileBackButton() {
        UITestHelpers.tapElement(profileBackButton, logMessage: "👈 Tapping on Profile back button.")
        
    }
    
    func clickProfileHealthDetailsCell() {
        UITestHelpers.tapElement(profileHealthDetailsCell, logMessage: "👆 Tapping on Health Details cell.")
    }
    
    func clickProfileMedicalIdCell() {
        UITestHelpers.tapElement(profileMedicalIdCell, logMessage: "👆 Tapping on Medical ID cell.")
    }
    
    func clickProfileHealthRecordsCell() {
        UITestHelpers.tapElement(profileHealthRecordsCell, logMessage: "👆 Tapping on Health Records cell.")
    }
    
    func clickProfileNotificationsCell() {
        UITestHelpers.tapElement(profileNotificationsCell, logMessage: "👆 Tapping on Notifications cell.")
    }
    
    func clickProfileOrganDonationCell() {
        UITestHelpers.tapElement(profileOrganDonationCell, logMessage: "👆 Tapping on Organ Donation cell.")
    }
    
    func clickProfileAppsCell() {
        UITestHelpers.tapElement(profileAppsCell, logMessage: "👆 Tapping on Apps cell.")
    }
    
    func clickProfileResearchStudiesCell() {
        UITestHelpers.tapElement(profileResearchStudiesCell, logMessage: "👆 Tapping on Research Studies cell.")
    }
    
    func clickProfileDevicesCell() {
        UITestHelpers.tapElement(profileDevicesCell, logMessage: "👆 Tapping on Devices cell.")
    }
    
    func clickExportAllHealthButton() {
        UITestHelpers.tapElement(exportAllHealthButton, logMessage: "👆 Tapping on Export All Health button.")
    }
    
    func clickExportAllHealthPopupCancelButton() {
        UITestHelpers.tapElement(exportAllHealthPopUpCancelButton, logMessage: "👆 Tapping on Cancel button in Export All Health popup.")
    }
}


