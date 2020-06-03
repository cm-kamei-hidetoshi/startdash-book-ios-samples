//
//  ViewController.swift
//  BottomSheetSample
//
//  Created by Maeda Tasuku on 2019/12/14.
//  Copyright © 2019 SampleCompany. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func detailButtonTapped() {
        pushToDetailView()
    }
    
    func pushToDetailView() {
        let storyboard = UIStoryboard(name: "Detail", bundle: nil)
        if let detailViewController = storyboard.instantiateInitialViewController() as? DetailViewController {
            navigationController?.pushViewController(detailViewController, animated: true)
        }
    }
}

