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
    var delegate: TVViewController?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        buttonVerMas.layer.cornerRadius = 0.2 * buttonVerMas.bounds.size.width
        buttonVerMas.clipsToBounds = true
    }
    
    @IBAction func buttonVerMas(_ sender: UIButton) {
       showAlert()
    }
    
    func showAlert(){
        let alert = UIAlertController(title: "Ver mas", message: "Haz pulsado el botón ver  mas", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ir a Ver mas", style: .default))
        alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel))
    }
}

