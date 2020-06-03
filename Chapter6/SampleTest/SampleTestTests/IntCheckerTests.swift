//
//  IntCheckerTests.swift
//  SampleTestTests
//
//  Created by Maeda Tasuku on 2019/12/28.
//  Copyright © 2019 Classmethod. All rights reserved.
//

import XCTest
@testable import SampleTest

class IntCheckerTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testCheckEvenNumber() {
        let checker = IntChecker()
        // 奇数のときはfalseが返る
        let result1 = checker.checkEven(number: 7)
        XCTAssertEqual(result1, false)
        
        // 偶数のときはtrueが返る
        let result2 = checker.checkEven(number: 8)
        XCTAssertTrue(result2)
    }
    
    func testExample() {
        let text = "hello" + " world"
        // 等価テスト
        XCTAssertEqual(text, "hello world")
        
        let bool = true
        // boolテストは成功
        XCTAssertTrue(bool)
        // boolテストは失敗
        XCTAssertFalse(bool)
        
        let optional: Int? = nil
        // nilテストは成功
        XCTAssertNil(optional)
        // nilテストは失敗
        XCTAssertNotNil(optional)
        
        // エラーを投げる
        XCTAssertThrowsError(try throwFunc(text: "error function"))
        
        // 条件失敗
        let condition = 9
        if condition > 5 {
            XCTFail("condition > 5")
        }
    }
    
    // 引数の長さでthrowするサンプルメソッド
    func throwFunc(text: String) throws {
        if text.count > 5 {
            throw SampleError.textCount
        }
    }
    
    enum SampleError: Error {
        case textCount
    }
    
    func testDescription() {
        XCTAssertEqual(1 + 2, 5, "1 + 2 = 3")
    }
    
    func testSampleGroup() {
        let checker = IntChecker()
        XCTContext.runActivity(named: "奇数のときはfalseが返る") { _ in
            let result1 = checker.checkEven(number: 7)
            XCTAssertFalse(result1)
            let result2 = checker.checkEven(number: -1)
            XCTAssertFalse(result2)
        }
        XCTContext.runActivity(named: "偶数のときはtrueが返る") { _ in
            let result1 = checker.checkEven(number: 4)
            XCTAssertTrue(result1)
            let result2 = checker.checkEven(number: 0)
            XCTAssertTrue(result2)
        }
        XCTContext.runActivity(named: "エラーサンプル") { _ in
            XCTFail("エラーを起こす")
        }
    }
}
