//
//  AccesosRapidos.swift
//  Viper- 02
//
//  Created by David Viloria Ortega on 20/01/22.
//

import UIKit

class AccesosRapidos: UICollectionViewCell {

    @IBOutlet weak var iconAR: UIImageView!
    @IBOutlet weak var labelAR: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func fetchImage(urlString: String) {
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
                self.iconAR.image = image
            }
        }
        getDataTask.resume()
    }
    
}
