//
//  MyCollectionViewCell.swift
//  uicollectionviewcell-from-xib
//
//  Created by bett on 8/18/17.
//  Copyright © 2017 bett. All rights reserved.
//

import UIKit

class Greetings: UITableViewCell {

    @IBOutlet weak var imgAvatar: UIImageView!
    @IBOutlet weak var lbName: UILabel!
    @IBOutlet weak var lbComment: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        setupSkeleton()
        loadData()
    }
    
    private func setupSkeleton(){
        imgAvatar.isSkeletonable = true
        lbName.isSkeletonable = true
        lbComment.isSkeletonable = true
    }
    
    private func loadData(){
        
        imgAvatar.showAnimatedGradientSkeleton(usingGradient: .init(baseColor: .systemRed), animation: nil, transition: .crossDissolve(0.5))
        lbName.showAnimatedGradientSkeleton()
        lbComment.showAnimatedGradientSkeleton()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 5){
            self.imgAvatar.hideSkeleton()
            self.lbName.hideSkeleton()
            self.lbComment.hideSkeleton()
        }
    }
}
