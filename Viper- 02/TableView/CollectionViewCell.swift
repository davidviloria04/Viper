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
    
    //View #2
    @IBOutlet weak var iconMiniApp02: UIImageView!
    @IBOutlet weak var labelMiniApp02: UILabel!
    
    //View #3
    @IBOutlet weak var iconMiniApp03: UIImageView!
    @IBOutlet weak var labelMiniApp03: UILabel!
    
    //View #4
    @IBOutlet weak var iconMiniApp04: UIImageView!
    @IBOutlet weak var labelMiniApp04: UILabel!
    
    
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
