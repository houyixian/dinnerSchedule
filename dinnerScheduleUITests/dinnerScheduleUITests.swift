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

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testKeyboardExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let app = XCUIApplication()
        let webViewsQuery = app.webViews
        //webViewsQuery/*@START_MENU_TOKEN@*/.textFields["姓名"]/*[[".otherElements[\"报名\"].textFields[\"姓名\"]",".textFields[\"姓名\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        let textField1 = webViewsQuery.textFields["姓名"]
        textField1.tap()
//        textField1.typeText("hhh")
//        webViewsQuery.textFields["姓名"].typeText("侯逸仙")
        
        let hKey = app/*@START_MENU_TOKEN@*/.keys["H"]/*[[".keyboards.keys[\"H\"]",".keys[\"H\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        hKey.tap()
        app/*@START_MENU_TOKEN@*/.keys["delete"]/*[[".keyboards.keys[\"delete\"]",".keys[\"delete\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        textField1.typeText("侯逸仙")
        
//        webViewsQuery/*@START_MENU_TOKEN@*/.textFields["手机号"]/*[[".otherElements[\"报名\"].textFields[\"手机号\"]",".textFields[\"手机号\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        let telephoneTextField = webViewsQuery.textFields["手机号"]
        telephoneTextField.tap()
        
        
        let moreKey = app/*@START_MENU_TOKEN@*/.keys["more"]/*[[".keyboards",".keys[\"more, numbers\"]",".keys[\"more\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/
        moreKey.tap()
        moreKey.tap()
        
        let key = app/*@START_MENU_TOKEN@*/.keys["1"]/*[[".keyboards.keys[\"1\"]",".keys[\"1\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        key.tap()
        app.keys["delete"].tap()
        telephoneTextField.typeText("18816311192")
        
//        webViewsQuery/*@START_MENU_TOKEN@*/.otherElements["请选择"]/*[[".otherElements[\"报名\"].otherElements[\"请选择\"]",".otherElements[\"请选择\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
//        app.pickerWheels["请选择"].swipeUp()
//        app.pickerWheels["电子业务板块-创新业务方向"]/*@START_MENU_TOKEN@*/.tap()/*[[".tap()",".press(forDuration: 1.0);"],[[[-1,1],[-1,0]]],[1]]@END_MENU_TOKEN@*/
//        app.toolbars["Toolbar"].buttons["Done"].tap()
//        webViewsQuery/*@START_MENU_TOKEN@*/.buttons["立即报名"]/*[[".otherElements[\"报名\"].buttons[\"立即报名\"]",".buttons[\"立即报名\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
//        webViewsQuery/*@START_MENU_TOKEN@*/.buttons["确定"]/*[[".otherElements[\"报名\"].buttons[\"确定\"]",".buttons[\"确定\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
//
        
        webViewsQuery/*@START_MENU_TOKEN@*/.otherElements["请选择"]/*[[".otherElements[\"报名\"].otherElements[\"请选择\"]",".otherElements[\"请选择\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.pickerWheels["请选择"].adjust(toPickerWheelValue: "电子业务板块-研发中心")
        app.toolbars["Toolbar"].buttons["Done"].tap()
        webViewsQuery/*@START_MENU_TOKEN@*/.buttons["立即报名"]/*[[".otherElements[\"报名\"].buttons[\"立即报名\"]",".buttons[\"立即报名\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        webViewsQuery/*@START_MENU_TOKEN@*/.buttons["确定"]/*[[".otherElements[\"报名\"].buttons[\"确定\"]",".buttons[\"确定\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        
        let textField = webViewsQuery/*@START_MENU_TOKEN@*/.textFields["姓名"]/*[[".otherElements[\"报名\"].textFields[\"姓名\"]",".textFields[\"姓名\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        textField.tap()
        webViewsQuery/*@START_MENU_TOKEN@*/.textFields["手机号"]/*[[".otherElements[\"报名\"].textFields[\"手机号\"]",".textFields[\"手机号\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        textField.tap()
        
        let nextButton = app.toolbars["Toolbar"].buttons["Next"]
        nextButton.tap()
        nextButton.tap()
        webViewsQuery/*@START_MENU_TOKEN@*/.buttons["立即报名"]/*[[".otherElements[\"报名\"].buttons[\"立即报名\"]",".buttons[\"立即报名\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        webViewsQuery/*@START_MENU_TOKEN@*/.buttons["确定"]/*[[".otherElements[\"报名\"].buttons[\"确定\"]",".buttons[\"确定\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()

        
    }
    
    
    func testToolBarExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let app = XCUIApplication()
        let webViewsQuery = app.webViews
        //webViewsQuery/*@START_MENU_TOKEN@*/.textFields["姓名"]/*[[".otherElements[\"报名\"].textFields[\"姓名\"]",".textFields[\"姓名\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        let textField1 = webViewsQuery.textFields["姓名"]
        textField1.tap()
        //        textField1.typeText("hhh")
        //        webViewsQuery.textFields["姓名"].typeText("侯逸仙")
        let nextButton = app.toolbars["Toolbar"].buttons["Next"]
        nextButton.tap()
        let toolbar = app.toolbars["Toolbar"]
        toolbar.buttons["Previous"].tap()
        
        textField1.typeText("侯逸仙")
        
        
        //        webViewsQuery/*@START_MENU_TOKEN@*/.textFields["手机号"]/*[[".otherElements[\"报名\"].textFields[\"手机号\"]",".textFields[\"手机号\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        let telephoneTextField = webViewsQuery.textFields["手机号"]
        telephoneTextField.tap()
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
        
//        webViewsQuery/*@START_MENU_TOKEN@*/.buttons["确定"]/*[[".otherElements[\"报名\"].buttons[\"确定\"]",".buttons[\"确定\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
//
//
//        let doneButton = app.toolbars["Toolbar"].buttons["Done"]
//        doneButton.tap()
//
//        let webViewsQuery = app.webViews
//        webViewsQuery/*@START_MENU_TOKEN@*/.otherElements["请选择"]/*[[".otherElements[\"报名\"].otherElements[\"请选择\"]",".otherElements[\"请选择\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
//        app.pickerWheels["请选择"].tap()
//        app.pickerWheels["电子业务板块-创新业务方向"].swipeUp()
//        doneButton.tap()
//        webViewsQuery/*@START_MENU_TOKEN@*/.buttons["立即报名"]/*[[".otherElements[\"报名\"].buttons[\"立即报名\"]",".buttons[\"立即报名\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
//        webViewsQuery/*@START_MENU_TOKEN@*/.staticTexts["您已报名啦！"]/*[[".otherElements[\"报名\"].staticTexts[\"您已报名啦！\"]",".staticTexts[\"您已报名啦！\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
//        webViewsQuery/*@START_MENU_TOKEN@*/.staticTexts["2018-05-16 12:47:12"]/*[[".otherElements[\"报名\"].staticTexts[\"2018-05-16 12:47:12\"]",".staticTexts[\"2018-05-16 12:47:12\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
//
//        let staticText = webViewsQuery/*@START_MENU_TOKEN@*/.staticTexts["取消报名"]/*[[".otherElements[\"报名\"].staticTexts[\"取消报名\"]",".staticTexts[\"取消报名\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
//        staticText.tap()
//        staticText.tap()
//        webViewsQuery/*@START_MENU_TOKEN@*/.buttons["取消"]/*[[".otherElements[\"报名\"].buttons[\"取消\"]",".buttons[\"取消\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        

        
    }
    
}
