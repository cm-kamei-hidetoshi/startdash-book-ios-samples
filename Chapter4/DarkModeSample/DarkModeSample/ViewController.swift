//
//  ViewController.swift
//  DarkModeSample
//
//  Created by Maeda Tasuku on 2019/12/01.
//  Copyright © 2019 SampleCompany. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    enum Menu: Int, CaseIterable {
        case defaultUIControls = 0
        case customColor
        
        var name: String {
            switch self {
            case .defaultUIControls:
                return "Default UI Controls"
            case .customColor:
                return "Custom Color"
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "ダークモードサンプル"
    }
    
    func pushToDefaultUIControls() {
        let storyboard = UIStoryboard(name: "DefaultUIControls", bundle: nil)
        if let cotroller = storyboard.instantiateInitialViewController() as? DefaultUIControlsViewController {
            navigationController?.pushViewController(cotroller, animated: true)
            
        }
    }
    
    func pushToCustomColor() {
        let storyboard = UIStoryboard(name: "CustomColorView", bundle: nil)
        if let cotroller = storyboard.instantiateInitialViewController() as? CustomColorViewController {
            navigationController?.pushViewController(cotroller, animated: true)
            
        }
    }
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Menu.allCases.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellId = "MainMenuCell"
        var cell = tableView.dequeueReusableCell(withIdentifier: cellId)
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: cellId)
        }
        let cellNotNil = cell!
        let menu = Menu.init(rawValue: indexPath.row)
        cellNotNil.textLabel?.text = menu?.name
        return cellNotNil
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        switch indexPath.row {
        case Menu.defaultUIControls.rawValue:
            pushToDefaultUIControls()
        case Menu.customColor.rawValue:
            pushToCustomColor()
        default:
            break
        }
    }
}
