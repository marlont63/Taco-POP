//
//  ReusableView.swift
//  TacoPOP
//
//  Created by Marlon Raschid Tavarez Parra on 23/10/16.
//  Copyright © 2016 MyBCloud. All rights reserved.
//

import UIKit

protocol ReusableView: class {}

extension ReusableView where Self: UIView {
    
    static var reuseIdentifier: String {
        
        return String(describing: self)
    }
}
