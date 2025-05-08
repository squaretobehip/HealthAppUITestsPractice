//
//  BrowsePage.swift
//  HealthAppPracticeUITests
//
//  Created by Michael Runyon on 4/14/25.
//

import XCTest

class BrowsePage {
    let app: XCUIApplication
    
    init(app: XCUIApplication) {
        self.app = app
    }
    
    // MARK: - Headings
    
    var browseHeading: XCUIElement {
        return app.staticTexts["Browse"]
    }
    
    var browseBackButton: XCUIElement {
        return app.navigationBars.buttons["Browse"]
    }
    
    // MARK: - Categories

    var browseHealthCategoryActivity: XCUIElement {
        return app.staticTexts["Activity"]
    }
    
    var browseHeatlthCategoryBodyMeasurements: XCUIElement {
        return app.staticTexts["Body Measurements"]
    }
    
    var browseHealthCategoryCycleTracking: XCUIElement {
        return app.staticTexts["Cycle Tracking"]
    }
    
    var browseHealthCategoryHearing: XCUIElement {
        return app.staticTexts["Hearing"]
    }
    
    var browseHealthCategoryHeart: XCUIElement {
        return app.staticTexts["Heart"]
    }
    
    var browseHealthCategoryMedications: XCUIElement {
        return app.staticTexts["Medications"]
    }
    
    var browseHealthCategoryMentalWellbeing: XCUIElement {
        return app.staticTexts["Mental Wellbeing"]
    }
    
    var browseHealthCategoryMobility: XCUIElement {
        return app.staticTexts["Mobility"]
    }
    
    var browseHealthCategoryNutrition: XCUIElement {
        return app.staticTexts["Nutrition"]
    }
    
    var browseHealthCategoryRespiratory: XCUIElement {
        return app.staticTexts["Respiratory"]
    }
    
    var browseHealthCategorySleep: XCUIElement {
        return app.staticTexts["Sleep"]
    }
    
    var browseHealthCategorySymptoms: XCUIElement {
        return app.staticTexts["Symptoms"]
    }
    
    var browseHealthCategoryVitals: XCUIElement {
        return app.staticTexts["Vitals"]
    }
    
    var browseHealthCategoryOtherData: XCUIElement {
        return app.staticTexts["Other Data"]
    }
    
    // MARK: - Actions
    
    func clickBrowseBackButton() {
        XCTAssert(browseBackButton.waitForExistence(timeout: 5), "The 'Browse' back button does not exist.")
        browseBackButton.tap()
    }
    
    func clickActivityButton() {
        XCTAssert(browseHealthCategoryActivity.waitForExistence(timeout: 5), "The 'Activity' button does not exist.")
        browseHealthCategoryActivity.tap()
    }
    
    func clickBodyMeasurementsButton() {
        XCTAssert(browseHeatlthCategoryBodyMeasurements.waitForExistence(timeout: 5), "The 'Body Measurements' button does not exist.")
        browseHeatlthCategoryBodyMeasurements.tap()
    }
    
    func clickCycleTrackingButton() {
        XCTAssert(browseHealthCategoryCycleTracking.waitForExistence(timeout: 5), "The 'Cycle Tracking' button does not exist.")
        browseHealthCategoryCycleTracking.tap()
    }
    
    func clickHearingButton() {
        XCTAssert(browseHealthCategoryHearing.waitForExistence(timeout: 5), "The 'Hearing' button does not exist.")
        browseHealthCategoryHearing.tap()
    }
    
    func clickHeartButton() {
        XCTAssert(browseHealthCategoryHeart.waitForExistence(timeout: 5), "The 'Heart' button does not exist.")
        browseHealthCategoryHeart.tap()
    }
    
    func clickMedicationsButton() {
        XCTAssert(browseHealthCategoryMedications.waitForExistence(timeout: 5), "The 'Medications' button does not exist.")
        browseHealthCategoryMedications.tap()
    }
    
    func clickMentalWellbeingButton() {
        XCTAssert(browseHealthCategoryMentalWellbeing.waitForExistence(timeout: 5), "The 'Mental Wellbeing' button does not exist.")
        browseHealthCategoryMentalWellbeing.tap()
    }
    
    func clickMobilityButton() {
        XCTAssert(browseHealthCategoryMobility.waitForExistence(timeout: 5), "The 'Mobility' button does not exist.")
        browseHealthCategoryMobility.tap()
    }
    
    func clickNutritionButton() {
        XCTAssert(browseHealthCategoryNutrition.waitForExistence(timeout: 5), "The 'Nutrition' button does not exist.")
        browseHealthCategoryNutrition.tap() 
    }
    
    func clickRespiratoryButton() {
        XCTAssert(browseHealthCategoryRespiratory.waitForExistence(timeout: 5), "The 'Respiratory' button does not exist.")
        browseHealthCategoryRespiratory.tap()
    }
    
    func clickSleepButton() {
        XCTAssert(browseHealthCategorySleep.waitForExistence(timeout: 5), "The 'Sleep' button does not exist.")
        browseHealthCategorySleep.tap()
    }
    
    func clickSymptomsButton() {
        XCTAssert(browseHealthCategorySymptoms.waitForExistence(timeout: 5), "The 'Symptoms' button does not exist.")
        browseHealthCategorySymptoms.tap()
    }
    
    func clickVitalsButton() {
        XCTAssert(browseHealthCategoryVitals.waitForExistence(timeout: 5), "The 'Vitals' button does not exist.")
        browseHealthCategoryVitals.tap()
    }
    
    func clickOtherDataButton() {
        XCTAssert(browseHealthCategoryOtherData.waitForExistence(timeout: 5), "The 'Other Data' button does not exist.")
        browseHealthCategoryOtherData.tap()
    }
}
