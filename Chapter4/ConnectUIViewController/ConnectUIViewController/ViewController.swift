//
//  ViewController.swift
//  ConnectUIViewController
//
//  Created by Maeda Tasuku on 2019/11/23.
//  Copyright © 2019 SampleCompany. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // ラベルの変数宣言
    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // ラベルにテキストの設定をする
        messageLabel.text = "Hello Message Label!"
        
        // ラベルの文字色を変更する
        messageLabel.textColor = UIColor.blue
    }
    
    @IBAction func buttonDidTap(_ button: UIButton) {
        print("button tapped")
    }
}
