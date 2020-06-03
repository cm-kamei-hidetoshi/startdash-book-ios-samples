//
//  IntChecker.swift
//  SampleTest
//
//  Created by Maeda Tasuku on 2019/12/28.
//  Copyright © 2019 Classmethod. All rights reserved.
//

import Foundation

class IntChecker {
    /// 偶数かどうかチェックする
    /// - Parameter number: チェックしたい数
    /// - Returns: 偶数だったらtrue。奇数だったらfalse
    func checkEven(number: Int) -> Bool {
        return number % 2 == 0
    }
}
