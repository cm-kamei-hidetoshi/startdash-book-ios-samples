//
//  DetailViewController.swift
//  NavigationSample
//
//  Created by Maeda Tasuku on 2019/11/23.
//  Copyright © 2019 SampleCompany. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    /// 名前のラベル
    @IBOutlet weak var fruitNameLabel: UILabel!
    
    /// 名前
    var fruitName: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 名前をラベルに設定する
        fruitNameLabel.text = fruitName
    }
}
