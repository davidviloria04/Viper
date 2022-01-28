//
//  TitleTableViewCell.swift
//  SDKTransfer
//
//  Created by Juan Carlos Balderas Saldaña on 30/04/21.
//  Copyright © 2021 Diego Palomares Castro. All rights reserved.
//

import UIKit

class showMoreShorcuts: UITableViewCell {
  
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var buttonVerMas: UIButton!
    var delegate: TVViewController?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        buttonVerMas.layer.cornerRadius = 0.2 * buttonVerMas.bounds.size.width
        buttonVerMas.clipsToBounds = true
        
        
        setupSkeleton()
        loadData()
    }
    
    @IBAction func buttonVerMas(_ sender: UIButton) {
        delegate?.showAlert()
    }
    
    
    private func setupSkeleton(){
        label.isSkeletonable = true
        buttonVerMas.isSkeletonable = true
    }
    
    private func loadData(){
        label.showAnimatedGradientSkeleton()
        buttonVerMas.showAnimatedGradientSkeleton()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 5){
            self.buttonVerMas.hideSkeleton()
            self.label.hideSkeleton()
        }
    }
    
    
    
    
    
}

