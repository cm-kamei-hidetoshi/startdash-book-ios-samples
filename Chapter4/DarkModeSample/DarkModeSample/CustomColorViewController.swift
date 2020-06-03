//
//  CustomColorViewController.swift
//  DarkModeSample
//
//  Created by Maeda Tasuku on 2019/12/01.
//  Copyright © 2019 SampleCompany. All rights reserved.
//

import UIKit

class CustomColorViewController: UIViewController {
    
    @IBOutlet weak var tirtiaryTextLabel: UILabel!
    @IBOutlet weak var customTextLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // tertiaryLabelを設定
        tirtiaryTextLabel.textColor = UIColor.tertiaryLabel
        
        // アセットで設定した名前からUIColorを作成
        customTextLabel.textColor = UIColor(named: "customText")
    }
}
