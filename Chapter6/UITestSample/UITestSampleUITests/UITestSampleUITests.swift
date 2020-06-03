//
//  UITestSampleUITests.swift
//  UITestSampleUITests
//
//  Created by Maeda Tasuku on 2019/12/30.
//  Copyright © 2019 SampleCompany. All rights reserved.
//

import XCTest

class UITestSampleUITests: XCTestCase {

    override func setUp() {
        continueAfterFailure = false
    }

    override func tearDown() {
    }

    func testAddCalculation() {
        let app = XCUIApplication()
        
        // アプリ立ち上げ
        app.launch()
        
        // 入力前のスクリーンショットを撮る
        let screenshot = XCUIScreen.main.screenshot()
        let attachment = XCTAttachment(screenshot: screenshot)
        // 成功しても画像を保存し続ける
        attachment.lifetime = .keepAlways
        // 成功時に削除する設定はこちら
        //attachment.lifetime = .deleteOnSuccess
        add(attachment)
        
        // コンポーネントをAccessibilityから取得
        let num1TextField = app.textFields["num1_input_textfield"]
        let num2TextField = app.textFields["num2_input_textfield"]
        let calcButton = app.buttons["calculate_button"]
        let resultLabel = app.staticTexts["result_label"]
        
        XCTContext.runActivity(named: "コンポーネントの存在を確認") { _ in
            XCTAssertTrue(num1TextField.exists)
            XCTAssertTrue(num2TextField.exists)
            XCTAssertTrue(calcButton.exists)
            XCTAssertTrue(resultLabel.exists)
        }

        // 数値を入力
        num1TextField.tap()
        num1TextField.typeText("37")
        
        num2TextField.tap()
        num2TextField.typeText("5")
        
        XCTContext.runActivity(named: "入力した数値を確認") { _ in
            XCTAssertEqual(num1TextField.value as? String, "37")
            XCTAssertEqual(num2TextField.value as? String, "5")
        }
        
        // 計算ボタンを押す
        calcButton.tap()
        
        XCTContext.runActivity(named: "計算結果を確認") { activity in
            XCTAssertEqual(resultLabel.label, "42")
            
            // 結果のスクリーンショットを保存
            let screenshot = app.windows.firstMatch.screenshot()
            let attachment = XCTAttachment(screenshot: screenshot)
            attachment.lifetime = .keepAlways
            //attachment.lifetime = .deleteOnSuccess
            activity.add(attachment)
        }
    }
}
