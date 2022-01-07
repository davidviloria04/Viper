//
//  MyCollectionViewCell.swift
//  Viper- 02
//
//  Created by Valerie Namuche on 5/01/22.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var cityname: UILabel!
    
    let tapGesture = UITapGestureRecognizer.init(target: self, action: #selector(clickLabel))
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        tapGesture.numberOfTouchesRequired = 1
        cityname.isUserInteractionEnabled = true
        
        setupSkeleton()
        loadData()
    }
    
    @objc func clickLabel(){
        
        let alert = UIAlertController(title: "Siuuuuuu", message: "Haz presionado la ciudad", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default))
    }
    
    
    private func setupSkeleton(){
        cityname.isSkeletonable = true
    }
    
    private func loadData() {
        
        cityname.showAnimatedGradientSkeleton()
        cityname.showAnimatedGradientSkeleton(usingGradient: .init(baseColor: .systemBlue), animation: nil, transition: .crossDissolve(0.5))
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                  
            self.cityname.hideSkeleton()
        }
    }
}
