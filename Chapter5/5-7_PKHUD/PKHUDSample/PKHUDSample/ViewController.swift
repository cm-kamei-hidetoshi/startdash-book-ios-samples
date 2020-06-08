//
//  ViewController.swift
//  PKHUDSample
//
//  Created by Hiraya Shingo on 2019/12/19.
//  Copyright © 2019 Hiraya Shingo. All rights reserved.
//

import UIKit
import PKHUD

class ViewController: UITableViewController {
    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        // HUDの表示と非表示
        HUD.show(.progress)
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            HUD.hide(animated: true)
        }

//        // 成功/失敗の表示
//        HUD.show(.progress)
//        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
//            HUD.flash(.success)
////            HUD.flash(.error)
//        }

//        // テキストを指定して成功/失敗を表示
//        HUD.show(.labeledProgress(title: "Loading", subtitle: nil))
//        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
//            HUD.flash(.labeledSuccess(title: "Success", subtitle: nil))
////            HUD.flash(.labeledError(title: "Error", subtitle: nil))
//        }

//        // テキストを表示
//        HUD.show(.label("データを更新しました"))
//        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
//            HUD.hide(animated: true)
//        }

//        // マスクの設定(背後のビューを触れるようにする・暗くしない)
//        HUD.allowsInteraction = true
//        HUD.dimsBackground = false
//        HUD.show(.progress)
//        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
//            HUD.hide(animated: true)
//        }
    }
}
