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
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setupSkeleton()
        loadData()
        view.layer.cornerRadius = 10.0;
        view.clipsToBounds = true
    }
    
    
    private func setupSkeleton(){
        cityname.isSkeletonable = true
        icon.isSkeletonable = true
    }
    
    private func loadData() {
        
        cityname.showAnimatedGradientSkeleton()
        cityname.showAnimatedGradientSkeleton(usingGradient: .init(baseColor: .systemBlue), animation: nil, transition: .crossDissolve(0.5))
        icon.showAnimatedGradientSkeleton()
        icon.showAnimatedGradientSkeleton(usingGradient: .init(baseColor: .systemMint), animation: nil, transition: .crossDissolve(0.5))
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                  
            self.cityname.hideSkeleton()
            self.icon.hideSkeleton()
        }
    }
}
