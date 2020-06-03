//
//  DetailViewController.swift
//  BottomSheetSample
//
//  Created by Maeda Tasuku on 2019/12/14.
//  Copyright © 2019 SampleCompany. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func modalButtonTapped() {
        showModalView()
    }
    
    func showModalView() {
        let storyboard = UIStoryboard(name: "ModalSample", bundle: nil)
        if let modalSampleViewController = storyboard.instantiateInitialViewController() as? ModalSampleViewController {
            
            // iOS 13以降は何も設定しない場合は.automaticですが
            // .pageSheetの設定をしたものと同じになります。
            modalSampleViewController.modalPresentationStyle = .pageSheet
          
            // iOS 12まではこちらの挙動でした
            //modalSampleViewController.modalPresentationStyle = .fullScreen
            
            present(modalSampleViewController, animated: true) {
                
            }
        }
    }
}
