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
        
        buttonVerMas.rounded()
        
        //setupSkeleton()
        //loadData()
    }
    
    @IBAction func buttonVerMas(_ sender: UIButton) {
        sender.bounce()
        delegate?.showAlert()
    }
    
    
//    private func setupSkeleton(){
//        label.isSkeletonable = true
//        label.linesCornerRadius = 7
//        buttonVerMas.isSkeletonable = true
//    }
//
//    private func loadData(){
//        label.showAnimatedGradientSkeleton(usingGradient: .init(baseColor: .white), transition: .crossDissolve(0.7))
//        buttonVerMas.showAnimatedGradientSkeleton()
//
//        DispatchQueue.main.asyncAfter(deadline: .now() + 5){
//            self.buttonVerMas.hideSkeleton()
//            self.label.hideSkeleton()
//        }
//    }
    
    
    
    
    
}

