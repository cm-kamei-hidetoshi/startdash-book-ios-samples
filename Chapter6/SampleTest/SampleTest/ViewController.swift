//
//  ViewController.swift
//  
//  
//  Created by maeda.tasuku on 2019/12/16
//  Copyright © 2019 Classmethod. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let checker = IntChecker()
        let result = checker.checkEven(number: 7)
        print("dbg \(result)")
    }
}

