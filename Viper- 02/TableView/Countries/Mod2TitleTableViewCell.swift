//
//  TitleTableViewCell.swift
//  SDKTransfer
//
//  Created by Juan Carlos Balderas Saldaña on 30/04/21.
//  Copyright © 2021 Diego Palomares Castro. All rights reserved.
//

import UIKit

class Mod2TitleTableViewCell: UITableViewCell {
    
    @IBOutlet weak var icon: UIImageView!
    private var indexPath: IndexPath?
    let urlString = "https://www.ambientum.com/wp-content/uploads/2019/01/bandera-australia-696x348.png"
    
    
    //    var entityFirebase: NewOnbordingAnalitics?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    private func fetchImage() {
        //get data
        
        //convert the data to image
        //set image to imageView
        guard let url = URL(string: urlString) else {
            return
        }
        
        let getDataTask = URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data, error == nil else{
                return
            }
            
            DispatchQueue.main.async {
                let image = UIImage(data: data)
                self.icon.image = image
            }
        }
        getDataTask.resume()
        
    }
    
}

