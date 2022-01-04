//
//  cityStyle3.swift
//  Viper- 02
//
//  Created by Valerie Namuche on 4/01/22.
//

import UIKit

class cityStyle3 : UITableViewCell {
    
    @IBOutlet weak var flag: UIImageView!
    @IBOutlet weak var cityLabel: UILabel!
    
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
                self.flag.image = image
            }
        }
        getDataTask.resume()
    }
}
