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
    @IBOutlet weak var view: UIView!
    @IBOutlet weak var newLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        newLabel.isHidden = true
        labelAR.numberOfLines = 0
        labelAR.linesCornerRadius = 8
        iconAR.layer.cornerRadius = 8
        view.layer.cornerRadius = 8
        
        setupSkeleton()
        loadData()
        
    }
    
    private func setupSkeleton(){
        labelAR.isSkeletonable = true
        iconAR.isSkeletonable = true
        
    }
    
    private func loadData(){
        labelAR.showGradientSkeleton(usingGradient: .init(baseColor: .white), animated: true, delay: 0.5, transition: .crossDissolve(0.5))
        iconAR.showAnimatedGradientSkeleton()
       
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 5){
            self.labelAR.hideSkeleton()
            self.iconAR.hideSkeleton()

        }
    }
    
    func fetchImage(urlString: String) {
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
