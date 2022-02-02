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
    
    @IBOutlet weak var labelHola: UILabel!
    
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
        iconAgregarDinero.isSkeletonable = true
        iconAgregarDinero.layer.cornerRadius = 8.0
        labelAgregarDinero.isSkeletonable = true
        labelAgregarDinero.linesCornerRadius = 7
        labelSaldo.isSkeletonable = true
        labelSaldo.linesCornerRadius = 7
        labelMontoDelSaldo.isSkeletonable = true
        labelMontoDelSaldo.linesCornerRadius = 7
        labelHola.isSkeletonable = true
        labelHola.linesCornerRadius = 7
    }
    
    private func launchSkeleton(){
        self.iconAgregarDinero.showAnimatedGradientSkeleton()
        self.labelAgregarDinero.showAnimatedGradientSkeleton()
        self.labelSaldo.showAnimatedGradientSkeleton()
        self.labelMontoDelSaldo.showAnimatedGradientSkeleton()
        self.labelHola.showAnimatedGradientSkeleton()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            self.iconAgregarDinero.hideSkeleton()
            self.labelAgregarDinero.hideSkeleton()
            self.labelSaldo.hideSkeleton()
            self.labelMontoDelSaldo.hideSkeleton()
            self.labelHola.hideSkeleton()
        }
    }
    
    
    
}
