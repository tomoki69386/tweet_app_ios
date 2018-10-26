//
//  InputField.swift
//  tweet
//
//  Created by 築山朋紀 on 2018/10/26.
//  Copyright © 2018 築山朋紀. All rights reserved.
//

import UIKit

class InputField: UITextField {
    required override init(frame: CGRect) {
        super.init(frame: frame)
        setUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setUI()
    }
    
    private func setUI() {
        textAlignment = .center
        layer.borderWidth = 1
        layer.borderColor = UIColor.gray.cgColor
        backgroundColor = .white
        layer.cornerRadius = self.frame.height / 2
    }
}
