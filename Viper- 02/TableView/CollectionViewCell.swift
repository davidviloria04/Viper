//
//  MyCollectionViewCell.swift
//  Viper- 02
//
//  Created by Valerie Namuche on 5/01/22.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var cityname: UILabel!
    @IBOutlet weak var icon: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        setupSkeleton()
        loadData()
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
