//
//  MutableCollection+Ext.swift
//  TacoPOP
//
//  Created by Marlon Raschid Tavarez Parra on 23/10/16.
//  Copyright © 2016 MyBCloud. All rights reserved.
//

import Foundation

extension MutableCollection where Index == Int {
    
    mutating func shuffle() {
        if count < 2 { return }
        
        for i in startIndex ..< endIndex - 1 {
            let j = Int(arc4random_uniform(UInt32(endIndex - i ))) + i
            
            guard i != j else { continue }
            swap(&self[i], &self[j])
        }
        
    }
}
