//
//  AsyncTests.swift
//  SampleTestTests
//
//  Created by Maeda Tasuku on 2019/12/29.
//  Copyright © 2019 Classmethod. All rights reserved.
//

import XCTest

class AsyncTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testAsyncSample() {
        // XCTestExpectationの作成
        let sampleExpectation = expectation(description: "非同期処理のサンプル")
        
        // 非同期処理の例。ここではタイマーを利用
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            // アサーション。実際には非同期の実行結果を使う
            XCTAssertEqual(1 + 2, 3)
            // 非同期処理が成功したのでXCTestExpectationに伝える
            sampleExpectation.fulfill()
        }
        
        // 3秒まで非同期処理を待つ。それを超えるとテスト失敗
        wait(for: [sampleExpectation], timeout: 3)
    }

}
