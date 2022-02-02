//
//  GreetingsTableViewCell.swift
//  Viper- 02
//
//  Created by David Viloria Ortega on 2/02/22.
//

import UIKit
import SkeletonView

class GreetingsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var cardSaldo: UIView!
    @IBOutlet weak var cardAddMoney: UIView!
    
    @IBOutlet weak var iconAgregarDinero: UIImageView!
    @IBOutlet weak var labelAgregarDinero: UILabel!
    
    @IBOutlet weak var labelMontoDelSaldo: UILabel!
    @IBOutlet weak var labelSaldo: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        cardSaldo.layer.cornerRadius = 8.0
        cardAddMoney.layer.cornerRadius = 8.0
        
        setupSkeleton()
        launchSkeleton()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    private func setupSkeleton(){
        self.iconAgregarDinero.isSkeletonable = true
        self.labelAgregarDinero.isSkeletonable = true
        self.labelSaldo.isSkeletonable = true
        self.labelMontoDelSaldo.isSkeletonable = true
        
    }
    
    private func launchSkeleton(){
        self.iconAgregarDinero.showAnimatedGradientSkeleton()
        self.labelAgregarDinero.showAnimatedGradientSkeleton()
        self.labelSaldo.showAnimatedGradientSkeleton()
        self.labelMontoDelSaldo.showAnimatedGradientSkeleton()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            self.iconAgregarDinero.hideSkeleton()
            self.labelAgregarDinero.hideSkeleton()
            self.labelSaldo.hideSkeleton()
            self.labelMontoDelSaldo.hideSkeleton()
        }
    }
    
    
    
}
