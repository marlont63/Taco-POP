//
//  TacoCell.swift
//  TacoPOP
//
//  Created by Marlon Raschid Tavarez Parra on 23/10/16.
//  Copyright © 2016 MyBCloud. All rights reserved.
//

import UIKit

class TacoCell: UICollectionViewCell, NibLoadableView, Shekeable {
    
    @IBOutlet weak var tacoImage: UIImageView!
    @IBOutlet weak var tacoLabel: UILabel!
    
    
    var taco: Taco!
    
    func configureCell(taco: Taco){
        self.taco = taco
        tacoImage.image = UIImage(named: taco.proteinId.rawValue)
        tacoLabel.text = taco.productName
        
    }

}
