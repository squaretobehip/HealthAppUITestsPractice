//
//  ProfileHealthDetailsPageTests.swift
//  HealthAppPracticeUITests
//
//  Created by Michael Runyon on 5/7/25.
//

import XCTest

//MARK: - Setup

class ProfileHealthDetailsPageTests: UITestBase {
    var profilePage: ProfilePage!
    var summaryPage: SummaryPage!
    var profileHealthDetailsPage: ProfileHealthDetailsPage!
    
    override func setUp() {
        super.setUp()
        profilePage = ProfilePage(app: app)
        summaryPage = SummaryPage(app: app)
        profileHealthDetailsPage = ProfileHealthDetailsPage(app: app)
        logger.log("🔍 Checking app state: \(app.state.rawValue)")
    }
    
    override func tearDown() {
        logger.log("🔧 Cleaning up after test and tearing down.")
        
        super.tearDown()
    }
    // MARK: - Tests
    
    func testProfileHealthDetailsTextFields() {
        
        logger.log("🔍 Starting input fields on Health Details page:")
        summaryPage.clickSummaryProfileButton()
        profilePage.clickProfileHealthDetailsCell()
        UITestHelpers.waitForPage(withTitle: "Health Details", in: app)
        logger.log("Enabling edit mode...")
        profileHealthDetailsPage.tapHealthDetailsEditButton()
        
        // Tests the First Name text field
        
        profileHealthDetailsPage.tapFirstNameTextField()
        logger.log("Entering the name 'John' into the text field...")
        profileHealthDetailsPage.firstNameTextField.typeText("John")
        let firstNameValue = profileHealthDetailsPage.firstNameTextField.value as? String
        XCTAssertEqual(firstNameValue, "John", "First name field value is not as expected.")
        
        // Tests the Last Name text field
        
        profileHealthDetailsPage.tapLastNameTextField()
        logger.log("Entering the name 'Smith' into the text field...")
        profileHealthDetailsPage.lastNameTextField.typeText("Smith")
        let lastNameTextField = profileHealthDetailsPage.lastNameTextField.value as? String
        XCTAssertEqual(lastNameTextField, "Smith", "Last name field value is not as expected.")
        
        // Tests the Date of Birth sliders
        
        profileHealthDetailsPage.tapBirthDate()
        logger.log("Entering date of birth...")
        profileHealthDetailsPage.monthPickerWheel.adjust(toPickerWheelValue: "July")
        XCTAssertEqual(profileHealthDetailsPage.monthPickerWheel.value as? String, "July", "Month picker value is incorrect.")

        profileHealthDetailsPage.dayPickerWheel.adjust(toPickerWheelValue: "15")
        XCTAssertEqual(profileHealthDetailsPage.dayPickerWheel.value as? String, "15", "Day picker value is incorrect.")

        profileHealthDetailsPage.yearPickerWheel.adjust(toPickerWheelValue: "1981")
        XCTAssertEqual(profileHealthDetailsPage.yearPickerWheel.value as? String, "1981", "Year picker value is incorrect.")
        
        logger.log("Closing date picker sliders...")
        profileHealthDetailsPage.tapBirthDate()
        
        // Tests the Sex field
        
        logger.log("Entering sex...")
        profileHealthDetailsPage.tapBiologicalSexField()
        //XCTAssertTrue(profileHealthDetailsPage.biologicalSexPickerWheel.exists, "Biological sex picker wheel does not exist.")
        profileHealthDetailsPage.tapBiologicalSexPickerWheel()
        profileHealthDetailsPage.biologicalSexPickerWheel.adjust(toPickerWheelValue: "Male")

        let selectedSex = profileHealthDetailsPage.biologicalSexPickerWheel.value as? String
        XCTAssertEqual(selectedSex, "Male", "Sex picker value is incorrect.")
        
        // Tests the Blood Type field
        
        logger.log("Entering blood type...")
        profileHealthDetailsPage.tapBloodTypeField()
        profileHealthDetailsPage.bloodTypePickerWheel.adjust(toPickerWheelValue: "O+")
        let selectedBloodType = profileHealthDetailsPage.bloodTypePickerWheel.value as? String
        XCTAssertEqual(selectedBloodType, "O+", "Blood type picker value is incorrect.")
        
        // Tests the Fitzpatrick Skin Type field
        
        logger.log("Entering Fitzpatrick skin type...")
        profileHealthDetailsPage.tapFitzpatrickSkinTypeField()
        profileHealthDetailsPage.fitzpatrickSkinTypePickerWheel.adjust(toPickerWheelValue: "Type II")
        let selectedFitzpatrickSkinType = profileHealthDetailsPage.fitzpatrickSkinTypePickerWheel.value as? String
        XCTAssert(selectedFitzpatrickSkinType == "Type II", "Fitzpatrick skin type picker value is incorrect.")
        profileHealthDetailsPage.tapFitzpatrickSkinTypeField()
        
        // Tests the Wheel Chair field
        
        logger.log("Entering Wheelchair option...")
        profileHealthDetailsPage.tapWheelchairUseField()
        profileHealthDetailsPage.wheelchairUsePickerWheel.adjust(toPickerWheelValue: "No")
        let selectedWheelchairUse = profileHealthDetailsPage.wheelchairUsePickerWheel.value as? String
        XCTAssertEqual(selectedWheelchairUse, "No", "Wheelchair use picker value is incorrect.")
        profileHealthDetailsPage.tapWheelchairUseField()
        
        // Tap the 'Done' button
        
        profileHealthDetailsPage.tapHealthDetailsDoneButton()
        UITestHelpers.waitForPage(withTitle: "Health Details", in: app)
        
    }
    
    
    
}
    
    
    
    

