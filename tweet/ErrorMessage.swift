//
//  ErrorMessage.swift
//  tweet
//
//  Created by 築山朋紀 on 2018/10/23.
//  Copyright © 2018 築山朋紀. All rights reserved.
//

import Foundation
import UIKit

class ErrorMessage {
    
    private var topViewController: UIViewController? {
        guard var topViewController = UIApplication.shared.keyWindow?.rootViewController else { return nil }
        while let presentedViewController = topViewController.presentedViewController {
            topViewController = presentedViewController
        }
        return topViewController
    }
    
    func errorMessage(code:Int?) {
        if let httpStatusCode = code {
            print(httpStatusCode)
            switch(httpStatusCode) {
            case 401:
                let title = "401"
                let message = ""
                let alertController = UIAlertController(title: title ,message: message, preferredStyle: UIAlertController.Style.alert)
                let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default){ (action: UIAlertAction) in
                    let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
                    let next: UIViewController = storyboard.instantiateInitialViewController()!
                    self.topViewController?.present(next, animated: true, completion: nil)
                }
                alertController.addAction(okAction)
                topViewController?.present(alertController, animated: true, completion: nil)
            case 404:
                let title = "404"
                let message = ""
                let alertController = UIAlertController(title: title ,message: message, preferredStyle: UIAlertController.Style.alert)
                let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default){ (action: UIAlertAction) in
                    let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
                    let next: UIViewController = storyboard.instantiateInitialViewController()!
                    self.topViewController?.present(next, animated: true, completion: nil)
                }
                alertController.addAction(okAction)
                topViewController?.present(alertController, animated: true, completion: nil)
            case 500:
                let title = "500"
                let message = ""
                let alertController = UIAlertController(title: title ,message: message, preferredStyle: UIAlertController.Style.alert)
                let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default){ (action: UIAlertAction) in
                    let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
                    let next: UIViewController = storyboard.instantiateInitialViewController()!
                    self.topViewController?.present(next, animated: true, completion: nil)
                }
                alertController.addAction(okAction)
                topViewController?.present(alertController, animated: true, completion: nil)
            default:break
            }
        }
    }
}
