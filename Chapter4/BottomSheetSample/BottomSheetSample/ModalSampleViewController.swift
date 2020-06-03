//
//  ModalSampleViewController.swift
//  BottomSheetSample
//
//  Created by Maeda Tasuku on 2019/12/14.
//  Copyright © 2019 SampleCompany. All rights reserved.
//

import UIKit

class ModalSampleViewController: UIViewController {
    
    @IBAction func closeButtonTapped() {
        closeView()
    }
    
    func closeView(){
        dismiss(animated: true) {
            
        }
    }
}
