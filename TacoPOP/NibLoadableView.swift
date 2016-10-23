//
//  NibLoadableView.swift
//  TacoPOP
//
//  Created by Marlon Raschid Tavarez Parra on 23/10/16.
//  Copyright © 2016 MyBCloud. All rights reserved.
//

import UIKit

protocol NibLoadableView: class {}


extension NibLoadableView where Self: UIView {
    static var nibName: String {
        return String(describing: self)
    }
}
