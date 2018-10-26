//
//  APIConst.swift
//  tweet
//
//  Created by 築山朋紀 on 2018/10/21.
//  Copyright © 2018 築山朋紀. All rights reserved.
//

import Foundation

struct APIConst {
    static let ApiHost = "http://localhost:3000"
    static let ProfileUrl: String = ApiHost + "/api/v1/users/show"
    static let userImage: String = ApiHost + "/user_images/"
    static let login: String = ApiHost + "/api/v1/users/login"
}
