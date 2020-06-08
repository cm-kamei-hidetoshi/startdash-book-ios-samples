//
//  ViewController.swift
//  PKHUDWithCarthage
//
//  Created by Hiraya Shingo on 2020/01/07.
//  Copyright © 2020 Hiraya Shingo. All rights reserved.
//

import UIKit
import PKHUD

class ViewController: UIViewController {
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        // HUDの表示と非表示
        HUD.show(.progress)
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            HUD.hide(animated: true)
        }
    }
}

