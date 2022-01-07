//
//  FinalCollectionViewCell.swift
//  Viper- 02
//
//  Created by David Viloria Ortega on 6/01/22.
//

import UIKit

class FinalCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var icon: UIImageView!
    @IBOutlet weak var city: UILabel!
    
    let singleTap = UITapGestureRecognizer(target: self, action: #selector(tapDetected))
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        icon.isUserInteractionEnabled = true
        icon.addGestureRecognizer(singleTap)
    }
    
    @objc func tapDetected(){
        print("Se ha pulsado la imagen")
    }
}
