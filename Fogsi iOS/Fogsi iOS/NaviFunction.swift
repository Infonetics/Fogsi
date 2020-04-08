//
//  NaviFunction.swift
//  Fogsi iOS
//
//  Created by Dayal ND on 07/04/20.
//  Copyright © 2020 Dayal ND. All rights reserved.
//

import Foundation
import UIKit
import SwiftUI

extension UINavigationController{
    
    
    
override open func viewDidLoad() {
        super.viewDidLoad()

                if #available(iOS 13.0, *) {
                let standardAppearance = UINavigationBarAppearance()
                    standardAppearance.backgroundColor = UIColor(red: CGFloat(0) / 255.0, green: CGFloat(135) / 255.0, blue: CGFloat(255) / 255.0, alpha: CGFloat(1))
                standardAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
                navigationBar.standardAppearance = standardAppearance
            }
 
    }
}

