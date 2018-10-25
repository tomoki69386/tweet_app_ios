//
//  ViewController.swift
//  tweet
//
//  Created by 築山朋紀 on 2018/10/21.
//  Copyright © 2018 築山朋紀. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let params: [String: String] = [
            "id": "2"
        ]
        Alamofire.request(APIConst.ProfileUrl, parameters: params).responseJSON {response in
            switch response.result {
            case .success:
                let decoder = JSONDecoder()
                let result = try! decoder.decode(ProfileModel.self, from: response.data!)
                print(result.name)
            case .failure:
                print("error")
            }
        }
    }
}
