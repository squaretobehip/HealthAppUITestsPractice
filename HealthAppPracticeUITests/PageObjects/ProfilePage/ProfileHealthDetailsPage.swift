//
//  ProfileHealthDetailsPage.swift
//  HealthAppPracticeUITests
//
//  Created by Michael Runyon on 5/7/25.
//

import XCTest

class ProfileHealthDetailsPage {
    let app: XCUIApplication
    
    init(app: XCUIApplication) {
        self.app = app
    }
 
    //MARK: - Variables
    
    var healthDetailsHeader: XCUIElement {
        return app.staticTexts["Health Details"]
    }
    
    var healthDetailsEditButton: XCUIElement {
        return app.navigationBars.buttons["Edit"]
    }
    
    var healthDetailsDoneButton: XCUIElement {
        return app.navigationBars.buttons["Done"]
    }
    
    var firstNameTextField: XCUIElement {
        return app.textFields["UIA.Health.HealthDetail.FirstName.Value"]
        
    }
    
    var lastNameTextField: XCUIElement {
        return app.textFields["UIA.Health.HealthDetail.LastName.Value"]
    }
    
    var birthDate: XCUIElement {
        return app.textFields["UIA.Health.HealthDetail.Birthdate.Value"]
    }
    
    var monthPickerWheel: XCUIElement {
        return app.pickerWheels.element(boundBy: 0)
    }

    var dayPickerWheel: XCUIElement {
        return app.pickerWheels.element(boundBy: 1)
    }

    var yearPickerWheel: XCUIElement {
        return app.pickerWheels.element(boundBy: 2)
    }
    
    var biologicalSexField: XCUIElement {
        return app.textFields["UIA.Health.HealthDetail.BiologicalSex.Value"]
    }
    
    var biologicalSexPickerWheel: XCUIElement {
        return app.pickerWheels.element(boundBy: 0)
    }
        
    var bloodTypeField: XCUIElement {
        return app.textFields["UIA.Health.HealthDetail.BloodType.Value"]
    }
    
    var bloodTypePickerWheel: XCUIElement {
        return app.pickerWheels.element(boundBy: 0)
    }
    
    var fitzpatrickSkinTypeField: XCUIElement {
        return app.textFields["UIA.Health.HealthDetail.FitzpatrickSkinType.Value"]
    }
    
    var fitzpatrickSkinTypePickerWheel: XCUIElement {
        return app.pickerWheels.element(boundBy: 0)
    }
    
    var wheelchairUseField: XCUIElement {
        return app.textFields["UIA.Health.HealthDetail.WheelchairUse.Value"]
    }
    
    var wheelchairUsePickerWheel: XCUIElement {
        return app.pickerWheels.element(boundBy: 0)
    }
    
    //MARK: - Actions
    
    func tapHealthDetailsEditButton() {
        UITestHelpers.tapElement(healthDetailsEditButton, logMessage: "👆 Tapping on Edit button.")
    }
    
    func tapHealthDetailsDoneButton() {
        UITestHelpers.tapElement(healthDetailsDoneButton, logMessage: "👆 Tapping on Done button.")
    }
    
    func tapFirstNameTextField() {
        UITestHelpers.tapElement(firstNameTextField, logMessage: "👆 Tapping on First Name text field.")
    }
    
    func tapLastNameTextField() {
        UITestHelpers.tapElement(lastNameTextField, logMessage: "👆 Tapping on Last Name text field.")
    }
    
    func tapBirthDate() {
        UITestHelpers.tapElement(birthDate, logMessage: "👆 Tapping on Birth Date text field.")
    }
    
    func tapBiologicalSexField() {
        UITestHelpers.tapElement(biologicalSexField, logMessage: "👆 Tapping on Sex field.")
    }
    
    func tapBiologicalSexPickerWheel() {
        UITestHelpers.tapElement(biologicalSexPickerWheel, logMessage: "👆 Tapping on Biological Sex picker wheel.")
    }
    
    func tapBloodTypeField() {
        UITestHelpers.tapElement(bloodTypeField, logMessage: "👆 Tapping on Blood Type text field.")
    }
    
    func tapBloodTypePickerWheel() {
        UITestHelpers.tapElement(bloodTypePickerWheel, logMessage: "👆 Tapping on Blood Type picker wheel.")
    }
    
    func tapFitzpatrickSkinTypeField() {
        UITestHelpers.tapElement(fitzpatrickSkinTypeField, logMessage: "👆 Tapping on Fitzpatrick Skin Type text field.")
    }
    
    func tapFitpatrickSkinTypePickerWheel() {
        UITestHelpers.tapElement(fitzpatrickSkinTypePickerWheel, logMessage: "👆 Tapping on Fitzpatrick Skin Type picker wheel.")
    }
    
    func tapWheelchairUseField() {
        UITestHelpers.tapElement(wheelchairUseField, logMessage: "👆 Tapping on Wheelchair Use text field.")
    }
    
    func tapWheelchairUsePickerWheel() {
        UITestHelpers.tapElement(wheelchairUsePickerWheel, logMessage: "👆 Tapping on Wheelchair Use picker wheel.")
    }
    
    
    
    
}
