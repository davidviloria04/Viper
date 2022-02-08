//
//  WhatDoYouWantTodayCell.swift
//  Viper- 02
//
//  Created by David Viloria Ortega on 8/02/22.
//

import UIKit
import SkeletonView

class WhatDoYouWantTodayCell: UITableViewCell {
    
    @IBOutlet weak var labelWhatDoYouWant: UILabel!
    @IBOutlet weak var buttonShowMore: UIButton!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        buttonShowMore.titleLabel?.font = UIFont(name: "ChalkboardSE-Regular", size: 20)
        setupSkeleton()
        loadSkeleton()
    }
    @IBAction func buttonShowMoreAction(_ sender: UIButton) {
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)


        // Configure the view for the selected state
    }
    
    func setupSkeleton(){
        labelWhatDoYouWant.isSkeletonable = true
        buttonShowMore.isSkeletonable = true
    }

    func loadSkeleton(){
        labelWhatDoYouWant.showAnimatedGradientSkeleton()
        buttonShowMore.showAnimatedGradientSkeleton()

        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            self.labelWhatDoYouWant.hideSkeleton()
            self.buttonShowMore.hideSkeleton()
        }
    }
    
}
