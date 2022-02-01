//
//  BannerTableViewCell.swift
//  Viper- 02
//
//  Created by Valerie Namuche on 21/01/22.
//

import UIKit

class BannerTableViewCell: UITableViewCell {

    @IBOutlet weak var promoBanner: UIImageView!
    var delegate: TVViewController?
    override func awakeFromNib() {
        super.awakeFromNib()        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        
        setupSkeleton()
        loadData()
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
                self.promoBanner.image = image
            }
        }
        getDataTask.resume()
    }
    
    private func setupSkeleton(){
        promoBanner.isSkeletonable = true
    }
    
    private func loadData(){
        promoBanner.showAnimatedGradientSkeleton(usingGradient: .init(baseColor: .systemRed), animation: nil, transition: .crossDissolve(0.25))
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 5){
            self.promoBanner.hideSkeleton()
        }
    }
    
}
