//
//  ViewController.swift
//  FaceIDTouchIDSample
//
//  Created by Maeda Tasuku on 2019/12/14.
//  Copyright © 2019 SampleCompany. All rights reserved.
//

import UIKit
import LocalAuthentication

class ViewController: UIViewController {

    @IBOutlet weak var stateLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        stateLabel.text = "ロック解除前"
    }
    
    @IBAction func loginTapped() {
        startUnlockScreen()
    }
    
    func startUnlockScreen() {
        // LAContextを作成
        let context = LAContext()
        // キャンセルボタンのタイトル
        context.localizedCancelTitle = "キャンセル"
        // 生体認証が失敗してパスコード入力の場合のボタンのタイトル
        context.localizedFallbackTitle = "パスコードを入力"
        
        var policyError: NSError?
        if context.canEvaluatePolicy(.deviceOwnerAuthentication, error: &policyError) {
            
            let reason = "ロックを解除します"
            context.evaluatePolicy(.deviceOwnerAuthentication,
                                   localizedReason: reason) { success, loginError in
                if success {
                    
                    DispatchQueue.main.async { [weak self] in
                        self?.stateLabel.text = "ロック解除成功!"
                    }
                    
                } else {
                    let loginErrorText = loginError?.localizedDescription ?? ""
                    DispatchQueue.main.async { [weak self] in
                        self?.stateLabel.text = "ロック解除エラー \(loginErrorText)"
                    }
                }
            }
        } else {
            let policyErrorText = policyError?.localizedDescription ?? ""
            print("biometricsかpasscodeが使えません \(policyErrorText)")
        }
    }
}

