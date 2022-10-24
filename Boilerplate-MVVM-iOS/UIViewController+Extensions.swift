//
//  UIViewController+Extensions.swift
//  Boilerplate-MVVM-iOS
//
//  Created by Igor Fastroni Correa on 21/10/22.
//

import Foundation
import Swinject

extension UIViewController{

    var appDelegate: AppDelegate{
        UIApplication.shared.delegate as! AppDelegate
    }
    
    var container: Container{
        appDelegate.container
    }
}
