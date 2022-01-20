//
//  TitleTableViewCell.swift
//  SDKTransfer
//
//  Created by Juan Carlos Balderas Saldaña on 30/04/21.
//  Copyright © 2021 Diego Palomares Castro. All rights reserved.
//

import UIKit

class Mod1TitleTableViewCell: UITableViewCell{
    
    
    @IBOutlet weak var citiesCV: UICollectionView!
    
    //citiesCV = UICollectionView(frame: .zero, collectionViewLayout: flowLayout)
    
    private var indexPath: IndexPath?
    private let itemsPerRow: CGFloat = 2
    var delegate : TVViewController?
    var listCities = [Cities]()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        citiesCV.dataSource = self
        citiesCV.delegate = self
        register(classType: CollectionViewCell.self)
        self.citiesCV.collectionViewLayout = flowLayout
        citiesCV.reloadData()

        // Initialization code
    }
    
    private func register(classType: AnyClass) {
            let id = String(describing: classType.self)
        citiesCV.register(UINib(nibName: id, bundle: nil), forCellWithReuseIdentifier: id)
        }
    
}

extension Mod1TitleTableViewCell : UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.listCities.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if (listCities[indexPath.row].type == 1) {
            guard var cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as? CollectionViewCell else {return UICollectionViewCell()}
            cell.cityname.text = listCities[indexPath.row].name
            return cell
        } else{
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AccesosRapidos", for: indexPath) as? AccesosRapidos else { return UICollectionViewCell()}
            cell.labelAR.text = listCities[indexPath.row].name
            return cell
        }
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)  {
        delegate?.alert()
    }
    
}
var flowLayout: UICollectionViewFlowLayout {
    let flowLayout = UICollectionViewFlowLayout()
    // edit properties here
    flowLayout.itemSize = CGSize(width: 80, height: 80)
    flowLayout.sectionInset = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
    flowLayout.minimumInteritemSpacing = 4
    // edit properties here

    return flowLayout
}


