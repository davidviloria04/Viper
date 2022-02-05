//
//  MyCollectionViewCell.swift
//  Viper- 02
//
//  Created by Valerie Namuche on 5/01/22.
//

import UIKit
import SkeletonView

class CollectionViewCell: UICollectionViewCell {
    
    //View #1
    @IBOutlet weak var miniAppName: UILabel!
    @IBOutlet weak var icon: UIImageView!
    @IBOutlet weak var view: UIView!
    @IBOutlet weak var newLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        newLabel.isHidden = true
        view.layer.cornerRadius = 10.0
        view.clipsToBounds = true
        //Skeleton
        setupSkeleton()
        loadData()
        
    }
    
    private func setupSkeleton(){
        miniAppName.isSkeletonable = true
        miniAppName.linesCornerRadius =  7
        icon.isSkeletonable = true
        icon.layer.cornerRadius = 7
    }
    
    private func loadData(){
        miniAppName.showAnimatedGradientSkeleton()
        icon.showAnimatedGradientSkeleton()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 5){
            self.miniAppName.hideSkeleton()
            self.icon.hideSkeleton()
        }
    }
    
    
}
