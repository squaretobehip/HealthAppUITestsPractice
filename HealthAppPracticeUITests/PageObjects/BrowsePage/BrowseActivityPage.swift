//
//  BrowseActivityPage.swift
//  HealthAppPracticeUITests
//
//  Created by Michael Runyon on 4/15/25.
//

import XCTest

class BrowseActivityPage {
    let app: XCUIApplication
    
    init(app: XCUIApplication) {
        self.app = app
        
    }
    
    // MARK: - Headings
    
    var activityHeading: XCUIElement {
        return app.staticTexts["Activity"]
    }
    
    var subcategoryActiveEnergyHeading: XCUIElement {
        return app.staticTexts["Active Energy"]
    }
    
    var subcatgoryActivityHeading: XCUIElement {
        return app.staticTexts["Activity"]
    }
    
    var subcategoryCardioFitnessHeading: XCUIElement {
        return app.staticTexts["Cardio Fitness"]
    }
    
    var subcategoryCardioRecovery: XCUIElement {
        return app.staticTexts["Cardio Recovery"]
    }
    
    var subcategoryCrossCountrySkiingDistance: XCUIElement {
        return app.staticTexts["Cross Country Skiing Distance"]
    }
    
    var subcategoryCrossCountrySkiingSpeed: XCUIElement {
        return app.staticTexts["Cross Country Skiing Speed"]
    }
    
    var subcategoryCyclingCadence: XCUIElement {
        return app.staticTexts["Cycling Cadence"]
    }
    
    // MARK: - Buttons
    
    var browseBackButton: XCUIElement {
        return app.buttons["Browse"]
    }
    
    var activityBackButton: XCUIElement {
        return app.buttons["Activity"]
    }
    
    var subcategoryActiveEnergyButton: XCUIElement {
        return app.staticTexts["Active Energy"]
    }
    
    var subcategoryActivityButton: XCUIElement {
        return app.staticTexts["Activity"]
    }
    
    var subcategoryCardioFitnessButton: XCUIElement {
        return app.staticTexts["Cardio Fitness"]
    }
    
    // MARK: - Actions
    
    func clickActiveEnergyButton() {
        XCTAssert(subcategoryActiveEnergyButton.waitForExistence(timeout: 5), "The 'Active Energy' button does not exist")
        subcategoryActiveEnergyButton.tap()
    }
    
    func clickActivityBackButton() {
        XCTAssert(activityBackButton.waitForExistence(timeout: 5), "The 'Activity' button does not exist")
        activityBackButton.tap()
    }
    
    func clickActivityButton() {
        XCTAssert(subcategoryActivityButton.waitForExistence(timeout: 5), "The 'Activity' subcategory button does not exist.")
        subcategoryActivityButton.tap()
    }
    
}
