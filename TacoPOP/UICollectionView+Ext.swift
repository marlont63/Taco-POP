//
//  UICollectionView+Ext.swift
//  TacoPOP
//
//  Created by Marlon Raschid Tavarez Parra on 23/10/16.
//  Copyright © 2016 MyBCloud. All rights reserved.
//

import UIKit

extension UICollectionView {
    
    func register<T: UICollectionViewCell>(_: T.Type) where T: ReusableView, T: NibLoadableView {
        
        let nib = UINib(nibName: T.nibName, bundle: nil)
        register(nib, forCellWithReuseIdentifier: T.reuseIdentifier)
    }
    
    func dequeueReusableCell<T: UICollectionViewCell>(forIndexPath: IndexPath) ->T where T: ReusableView {
        
        guard let cell = dequeueReusableCell(withReuseIdentifier: T.reuseIdentifier, for: forIndexPath) as? T else {
            fatalError("Clould not dequeue cell with indentifier \(T.reuseIdentifier)")
        }
        return cell
    }
    
}


extension UICollectionViewCell: ReusableView {}
