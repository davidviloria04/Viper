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
    @IBOutlet weak var cityname: UILabel!
    @IBOutlet weak var icon: UIImageView!
    @IBOutlet weak var view: UIView!
    @IBOutlet weak var isNew: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        view.layer.cornerRadius = 10.0
        view.clipsToBounds = true
        isNew.layer.cornerRadius = 5.0
        isNew.clipsToBounds = true
        
        //Skeleton
        setupSkeleton()
        loadData()
        
    }
    
    private func setupSkeleton(){
        cityname.isSkeletonable = true
        cityname.linesCornerRadius =  7
        icon.isSkeletonable = true
        icon.layer.cornerRadius = 7
        isNew.isSkeletonable = true
        self.isNew.isHiddenWhenSkeletonIsActive = true
    }
    
    private func loadData(){
        cityname.showAnimatedGradientSkeleton()
        icon.showAnimatedGradientSkeleton()
        isNew.showAnimatedGradientSkeleton()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 5){
            self.cityname.hideSkeleton()
            self.icon.hideSkeleton()
            self.isNew.hideSkeleton()
        }
    }
    
    
}
