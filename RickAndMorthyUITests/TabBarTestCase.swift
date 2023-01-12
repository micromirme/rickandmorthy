//
//  TabBarTestCase.swift
//  RickAndMorthyUITests
//
//  Created by Виталий Захаров on 28.12.2022.
//

import XCTest

class TabBarTestCase: XCTestCase {
    
    var application: XCUIApplication!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        
        application = XCUIApplication()
        application.launch()
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testCharacterTabBar() throws {
        application.tabBars.buttons["Characters"].tap()
        
        let label = application.staticTexts["Characters"]
        XCTAssertTrue(label.exists)
    }
    
    func testLocationsTabBar() throws {
        application.tabBars.buttons["Locations"].tap()
        
        let label = application.staticTexts["Locations"]
        XCTAssertTrue(label.exists)
    }
    
    func testEpisodesTabBar() throws {
        application.tabBars.buttons["Episodes"].tap()
        
        let label = application.staticTexts["Episodes"]
        XCTAssertTrue(label.exists)
    }
    
    func testSettingsTabBar() throws {
        application.tabBars.buttons["Settings"].tap()
        
        let label = application.staticTexts["Settings"]
        XCTAssertTrue(label.exists)
    }
}
