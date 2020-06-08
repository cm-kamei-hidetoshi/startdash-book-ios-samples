//
//  ViewController.swift
//  AlamofireSample
//
//  Created by Hiraya Shingo on 2019/12/09.
//  Copyright © 2019 Hiraya Shingo. All rights reserved.
//

import UIKit

// (1) import文を追加する
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        // (3) getRepositoryInfo()の呼び出しを追加する
        getRepositoryInfo()
    }

    // (2) getRepositoryInfo()を追加する
    func getRepositoryInfo() {
        // (2-1) リクエストの情報を作成する
        let req = request("https://api.github.com/search/repositories",
                          parameters: ["q": "Alamofire"])

        // (2-2) リクエストを実行する
        req.validate().responseJSON { response in
            // (2-3) 取得結果をログ出力する
            switch response.result {
            case .success(let data):
                print("success. data:\(data)")
            case .failure(let error):
                print("failure. data:\(error)")
            }
        }
    }

    func hoge() {
        let headers: HTTPHeaders = [
            "Authorization": "Basic xxxxx",
            "Accept": "application/json"
        ]

        let req = request("https://api.example.com/",
                          headers: headers)
        req.validate(statusCode: 200..<300)
            .validate { (request, response, data) -> Request.ValidationResult in
            // ...

            return .success // or .failure(error)
        }.response { res in
            // ...
        }
    }
}

