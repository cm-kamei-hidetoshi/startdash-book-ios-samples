//
//  ViewController.swift
//  NavigationSample
//
//  Created by Maeda Tasuku on 2019/11/23.
//  Copyright © 2019 SampleCompany. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    /// フルーツ名リスト
    var fruitNames: [String] = [
        "リンゴ",
        "バナナ",
        "みかん",
        "パイナップル"
    ]
    
    @IBOutlet weak var fruitListView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // タイトルを設定
        title = "フルーツリスト"
    }
}

extension ViewController: UITableViewDataSource {
    
    /// リストを何行にするか
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruitNames.count
    }
    
    /// ある行に対してのUITableViewCellを返す
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // 固定のIDを設定（名前は何でも良い）
        let identifier = "FruitCell"
        // dequeueをすることですでに作成済みのセルから取得できる
        var cell = tableView.dequeueReusableCell(withIdentifier: identifier)
        // セルがまだ作成されていなければ作成する
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: identifier)
        }
        // n行目の名前を取得
        let fruitName = fruitNames[indexPath.row]
        // テキストラベルにセット
        cell?.textLabel?.text = fruitName
        // オプショナルは返せないので!をつける
        return cell!
    }
}

extension ViewController: UITableViewDelegate {
    /// 行が選択されたとき
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        // 選択された名前を取得
        let name = fruitNames[indexPath.row]
        
        // 詳細画面を作成
        let storyboard = UIStoryboard(name: "DetailViewController", bundle: nil)
        guard let detailViewController = storyboard.instantiateInitialViewController() as? DetailViewController else {
            return
        }
        
        // 詳細画面の名前をセット
        detailViewController.fruitName = name
        
        // プッシュ遷移
        navigationController?.pushViewController(detailViewController, animated: true)
    }
}
