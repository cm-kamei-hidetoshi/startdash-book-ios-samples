//
//  ViewController.swift
//  KingfisherWithCarthage
//
//  Created by Hiraya Shingo on 2020/01/06.
//  Copyright © 2020 Hiraya Shingo. All rights reserved.
//

import UIKit
import Kingfisher

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        // 画像をダウンロードし、UIImageViewに設定する

        // (1) UIImageViewの作成とレイアウトを行う
        let imageView = UIImageView()
        view.addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.widthAnchor.constraint(equalToConstant: 250).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 250).isActive = true
        imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true

//        // (2) UIImageViewに対して画像のダウンロードと設定を行う
//        let url = URL(string: "https://raw.githubusercontent.com/onevcat/Kingfisher/master/images/kingfisher-1.jpg")
//        imageView.kf.setImage(with: url)

//        // UIImageViewにプレースホルダを設定する
//        let url = URL(string: "https://raw.githubusercontent.com/onevcat/Kingfisher/master/images/kingfisher-1.jpg")
//        let placeholder = UIImage(named: "placeholder")
//        imageView.kf.setImage(with: url, placeholder: placeholder)

//        // 画像を角丸にする
//        let url = URL(string: "https://raw.githubusercontent.com/onevcat/Kingfisher/master/images/kingfisher-1.jpg")
//        let processor = RoundCornerImageProcessor(cornerRadius: 20)
//        imageView.kf.setImage(with: url, options: [.processor(processor)])

        // アニメーションをかけて画像を表示する
        let url = URL(string: "https://raw.githubusercontent.com/onevcat/Kingfisher/master/images/kingfisher-1.jpg")
        let fade = ImageTransition.fade(0.2)
        imageView.kf.setImage(with: url, options: [.transition(fade)])

        let cache = ImageCache.default
        // UIImageViewに対して画像のダウンロードと設定を行う
//        let placeholder = UIImage(named: "placeholder")
//        imageView.kf.setImage(with: url, placeholder: placeholder)

//        let processor = RoundCornerImageProcessor(cornerRadius: 20)
//        imageView.kf.setImage(with: url, options: [.processor(processor)])
    }
}

