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
    }
    
}
