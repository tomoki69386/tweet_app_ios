//
//  ProfileModel.swift
//  tweet
//
//  Created by 築山朋紀 on 2018/10/21.
//  Copyright © 2018 築山朋紀. All rights reserved.
//

import Foundation

struct ProfileModel: Codable {
    let id: Int
    let name: String
    let email: String
    let image_name: String
    let password: String
}
