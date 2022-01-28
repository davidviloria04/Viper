//
//  BannerTableViewCell.swift
//  Viper- 02
//
//  Created by Valerie Namuche on 21/01/22.
//

import UIKit

class BannerTableViewCell: UITableViewCell {

    @IBOutlet weak var promoBanner: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        
        setupSkeleton()
        loadData()
    }
    
    private func setupSkeleton(){
        promoBanner.isSkeletonable = true
    }
    
    private func loadData(){
        promoBanner.showAnimatedGradientSkeleton(usingGradient: .init(baseColor: .systemRed), animation: nil, transition: .crossDissolve(0.5))
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 5){
            self.promoBanner.hideSkeleton()
        }
    }
    
}
