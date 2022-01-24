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
        setupSkeleton()
        loadData()
    }
    
    private func setupSkeleton(){
        labelAR.isSkeletonable = true
        iconAR.isSkeletonable = true
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
    private func loadData() {
        
        labelAR.showAnimatedGradientSkeleton()
        labelAR.showAnimatedGradientSkeleton(usingGradient: .init(baseColor: .systemBlue), animation: nil, transition: .crossDissolve(0.5))
        iconAR.showAnimatedGradientSkeleton()
        iconAR.showAnimatedGradientSkeleton(usingGradient: .init(baseColor: .systemMint), animation: nil, transition: .crossDissolve(0.5))
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                  
            self.labelAR.hideSkeleton()
            self.iconAR.hideSkeleton()
        }
    }
}
