//
//  dinnerScheduleUITests.swift
//  dinnerScheduleUITests
//
//  Created by 侯逸仙 on 2018/5/15.
//  Copyright © 2018 侯逸仙. All rights reserved.
//

import XCTest

class dinnerScheduleUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()
        //判断今天是否是周末，如果是的话，则终止程序的运行
        let calendar = Calendar.current
        if let weekday = calendar.dateComponents([.weekday], from: Date()).weekday {
            print(weekday)
//            print((weekday + 5) % 6) 转换函数不对
            guard [2, 3, 4 , 5, 6].contains(weekday) else {
                XCUIApplication().terminate()
                return
            }
        }


        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.

        
    }
    
    
    func testHouyixianSchedule() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        
        let app = XCUIApplication()
        let webViewsQuery = app.webViews
        sleep(5)
        let textField1 = webViewsQuery.textFields["姓名"]
        textField1.tap()
        let nextButton = app.toolbars["Toolbar"].buttons["Next"]
        nextButton.tap()
        let toolbar = app.toolbars["Toolbar"]
        toolbar.buttons["Previous"].tap()
        textField1.typeText("侯逸仙")
        toolbar.buttons["Next"].tap()
        let telephoneTextField = webViewsQuery.textFields["手机号"]
        //telephoneTextField.tap()
        telephoneTextField.typeText("18816311192")

        webViewsQuery/*@START_MENU_TOKEN@*/.otherElements["请选择"]/*[[".otherElements[\"报名\"].otherElements[\"请选择\"]",".otherElements[\"请选择\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.pickerWheels["请选择"].adjust(toPickerWheelValue: "电子业务板块-研发中心")
        app.toolbars["Toolbar"].buttons["Done"].tap()
        webViewsQuery/*@START_MENU_TOKEN@*/.buttons["立即报名"]/*[[".otherElements[\"报名\"].buttons[\"立即报名\"]",".buttons[\"立即报名\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        sleep(5)
        let successScheduleStaticText = webViewsQuery.staticTexts["报名成功！"]
        let alreadyScheduleStaticText = webViewsQuery.staticTexts["您已报名啦！"]
        let success = successScheduleStaticText.exists || alreadyScheduleStaticText.exists
        XCTAssertTrue(success)
        
    }
    
    func testHuyuehengSchedule() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let app = XCUIApplication()
        let webViewsQuery = app.webViews
        sleep(5)
        let textField1 = webViewsQuery.textFields["姓名"]
        textField1.tap()
        let nextButton = app.toolbars["Toolbar"].buttons["Next"]
        nextButton.tap()
        let toolbar = app.toolbars["Toolbar"]
        toolbar.buttons["Previous"].tap()
        textField1.typeText("胡月恒")
        toolbar.buttons["Next"].tap()
        let telephoneTextField = webViewsQuery.textFields["手机号"]
        telephoneTextField.typeText("13323833820")
        
        webViewsQuery/*@START_MENU_TOKEN@*/.otherElements["请选择"]/*[[".otherElements[\"报名\"].otherElements[\"请选择\"]",".otherElements[\"请选择\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.pickerWheels["请选择"].adjust(toPickerWheelValue: "电子业务板块-研发中心")
        app.toolbars["Toolbar"].buttons["Done"].tap()
        webViewsQuery/*@START_MENU_TOKEN@*/.buttons["立即报名"]/*[[".otherElements[\"报名\"].buttons[\"立即报名\"]",".buttons[\"立即报名\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        sleep(5)
        let successScheduleStaticText = webViewsQuery.staticTexts["报名成功！"]
        let alreadyScheduleStaticText = webViewsQuery.staticTexts["您已报名啦！"]
        let success = successScheduleStaticText.exists || alreadyScheduleStaticText.exists
        XCTAssertTrue(success)
        
    }
    
    
}
