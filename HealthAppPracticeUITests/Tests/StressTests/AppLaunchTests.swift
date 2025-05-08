//
//  AppLaunchTests.swift
//  HealthAppPracticeUITests
//
//  Created by Michael Runyon on 4/25/25.
//

import XCTest

class AppLaunchTests: UITestBase {
    
    // Number of times to launch and close the app in the test
    let launchIterations = 5
    
    override func setUp() {
        super.setUp()
        logger.log("🔧 Setting up the test environment.")
        
        // Launch the app once before the tests begin
        app.launch()
    }
    
    override func tearDown() {
        logger.log("🔧 Cleaning up after test and tearing down.")
            
        // Press home to exit the app
        //XCUIDevice.shared.press(.home)
            
        super.tearDown()
    }
    
    func testRepeatedAppLaunches() {
        logger.log ("🚀 Starting stress test: Launching and closing the app \(launchIterations) times.")
        for iteration in 1...launchIterations {
            logger.log("Launching app iteration \(iteration) of \(launchIterations).")
            app.launch()
            
            sleep(1)
            
            logger.log("⛔️ Iteration \(iteration): Terminating app.")
            app.terminate()
        }
    }
    
    func testAppLaunchPerformance() {
        
        // Measure performance
        measure(metrics: [XCTApplicationLaunchMetric()]) {
            app.launch()
        }
        
    }
}
