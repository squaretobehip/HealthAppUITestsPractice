//
//  BrowsePageTests.swift
//  HealthAppPracticeUITests
//
//  Created by Michael Runyon on 4/14/25.
//

import XCTest

class BrowsePageTests: UITestBase {
    var summaryPage: SummaryPage!
    var browsePage: BrowsePage!
    
    override func setUp() {
        super.setUp()
        summaryPage = SummaryPage(app: app)
        browsePage = BrowsePage(app: app)
        logger.log("🔍 Checking app state: \(app.state.rawValue)")
    }
    
    func testBrowsePageHealthCategories() {
        // Activity
        
        logger.log("👆 Selecting the 'Browse' tab button.")
        summaryPage.clickBrowseTabButton()
        sleep(1)
        logger.log("👆 Selecting the 'Activity' cell.")
        browsePage.clickActivityButton()
        logger.log("👈 Going back to 'Browse' page via the back button.")
        browsePage.clickBrowseBackButton()
        
        // Body Measurements
        
        logger.log("👆 Selecting the 'Body Measurements' cell.")
        browsePage.clickBodyMeasurementsButton()
        sleep(1)
        logger.log("👈 Going back to 'Browse' page via the back button.")
        browsePage.clickBrowseBackButton()
        
        // Cycle Tracking
        
        logger.log("👆 Selecting the 'Cycle Tracking' cell.")
        browsePage.clickCycleTrackingButton()
        sleep(1)
        logger.log("👈 Going back to 'Browse' page via the back button.")
        browsePage.clickBrowseBackButton()
        
        // Hearing
        
        logger.log("👆 Selecting the 'Hearing' cell.")
        browsePage.clickHearingButton()
        sleep(1)
        logger.log("👈 Going back to 'Browse' page via the back button.")
        browsePage.clickBrowseBackButton()
        
        // Heart
        
        logger.log("👆 Selecting the 'Heart' cell.")
        browsePage.clickHeartButton()
        sleep(1)
        logger.log("👈 Going back to 'Browse' page via the back button.")
        browsePage.clickBrowseBackButton()
        
        // Medications
        
        logger.log("👆 Selecting the 'Medications' cell.")
        browsePage.clickMedicationsButton()
        sleep(1)
        logger.log("👈 Going back to 'Browse' page via the back button.")
        browsePage.clickBrowseBackButton()
        
        // Mental Wellbeing
        
        logger.log("👆 Selecting the 'Mental Wellbeing' cell.")
        browsePage.clickMentalWellbeingButton()
        sleep(1)
        logger.log("👈 Going back to 'Browse' page via the back button.")
        browsePage.clickBrowseBackButton()
        
        // Mobility
        
        logger.log("👆 Selecting the 'Mobility' cell.")
        browsePage.clickMobilityButton()
        sleep(1)
        logger.log("👈 Going back to 'Browse' page via the back button.")
        browsePage.clickBrowseBackButton()
        
        // Nutrition
        
        logger.log("👆 Selecting the 'Nutrition' cell.")
        browsePage.clickNutritionButton()
        sleep(1)
        logger.log("👈 Going back to 'Browse' page via the back button.")
        browsePage.clickBrowseBackButton()
        
        // Respitory
        
//        logger.log("👆 Selecting the 'Respitory' cell.")
//        browsePage.clickRespiratoryButton()
//        sleep(1)
//        logger.log("👈 Going back to 'Browse' page via the back button.")
//        browsePage.clickBrowseBackButton()
        
        logger.log("👆 Selecting the 'Respitory' cell.")
        scrollAndTap(browsePage.browseHealthCategoryRespiratory)
        sleep(1)

        logger.log("👈 Going back to 'Browse' page via the back button.")
        browsePage.clickBrowseBackButton()
        
        // Sleep
        
        logger.log("👆 Selecting the 'Sleep' cell.")
        browsePage.clickSleepButton()
        sleep(1)
        logger.log("👈 Going back to 'Browse' page via the back button.")
        browsePage.clickBrowseBackButton()
        
        // Symptoms
        
        logger.log("👆 Selecting the 'Symptoms' cell.")
        browsePage.clickSymptomsButton()
        sleep(1)
        logger.log("👈 Going back to 'Browse' page via the back button.")
        browsePage.clickBrowseBackButton()
        
        // Vitals
        
        logger.log("👆 Selecting the 'Vitals' cell.")
        browsePage.clickVitalsButton()
        sleep(1)
        logger.log("👈 Going back to 'Browse' page via the back button.")
        browsePage.clickBrowseBackButton()
        
        // Other Data
        
        logger.log("👆 Selecting the 'Other Data' cell.")
        browsePage.clickOtherDataButton()
        sleep(1)
        logger.log("👈 Going back to 'Browse' page via the back button.")
        browsePage.clickBrowseBackButton()
    }
    
 

    
}
