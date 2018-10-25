//
//  ViewController.swift
//  tweet
//
//  Created by 築山朋紀 on 2018/10/21.
//  Copyright © 2018 築山朋紀. All rights reserved.
//

import UIKit
import Alamofire
import SDWebImage

class ViewController: UIViewController {
    
    @IBOutlet weak var ImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let params: [String: String] = [
            "id": "3"
        ]
        Alamofire.request(APIConst.ProfileUrl, parameters: params).responseJSON {response in
            switch response.result {
            case .success:
                let decoder = JSONDecoder()
                let result = try! decoder.decode(ProfileModel.self, from: response.data!)
                print(result.name)
                let imageURL = URL(string: APIConst.userImage + result.image_name)
                self.ImageView.sd_setImage(with: imageURL)
            case .failure:
                print("error")
            }
        }
    }
}
