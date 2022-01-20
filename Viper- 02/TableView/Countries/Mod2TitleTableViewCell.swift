//
//  TitleTableViewCell.swift
//  SDKTransfer
//
//  Created by Juan Carlos Balderas Saldaña on 30/04/21.
//  Copyright © 2021 Diego Palomares Castro. All rights reserved.
//

import UIKit

class Mod2TitleTableViewCell: UITableViewCell {
  
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var buttonVerMas: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        buttonVerMas.layer.cornerRadius = 0.2 * buttonVerMas.bounds.size.width
        buttonVerMas.clipsToBounds = true
    }
    
    @IBAction func buttonVerMas(_ sender: UIButton) {
       
    }
}

