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
    @IBOutlet weak var isNew: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        isNew.clipsToBounds = true
        isNew.layer.cornerRadius = 5.0
        labelAR.numberOfLines = 0
        setupSkeleton()
        loadData()
        
    }
    
    
    
    private func setupSkeleton(){
        labelAR.isSkeletonable = true
        iconAR.isSkeletonable = true
        isNew.isSkeletonable = true
        self.isNew.isHiddenWhenSkeletonIsActive = true
    }
    
    private func loadData(){
        labelAR.showGradientSkeleton(usingGradient: .init(baseColor: .red), animated: true, delay: 0.5, transition: .crossDissolve(0.5))
        iconAR.showAnimatedGradientSkeleton()
        isNew.showAnimatedGradientSkeleton()
        
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 5){
            self.labelAR.hideSkeleton()
            self.iconAR.hideSkeleton()
            self.isNew.hideSkeleton()
        }
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
