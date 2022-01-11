//
//  TitleTableViewCell.swift
//  SDKTransfer
//
//  Created by Juan Carlos Balderas Saldaña on 30/04/21.
//  Copyright © 2021 Diego Palomares Castro. All rights reserved.
//

import UIKit

class Mod1TitleTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var citiesCV: UICollectionView!
    let tapGesture = UITapGestureRecognizer(target: self, action: #selector(tapDetected))
    
    private var indexPath: IndexPath?
    var delegate : TVViewController?
    var listCities = [Cities]()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        citiesCV.dataSource = self
        register(classType: CollectionViewCell.self)
        citiesCV.reloadData()
        // Initialization code
    }
    
    private func register(classType: AnyClass) {
            let id = String(describing: classType.self)
        citiesCV.register(UINib(nibName: id, bundle: nil), forCellWithReuseIdentifier: id)
        }
    
    @objc func tapDetected(){
        print("Pulsado")
    }
    
}

extension Mod1TitleTableViewCell : UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.listCities.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        cell.cityname.text = listCities[indexPath.row].name
        cell.icon.isUserInteractionEnabled = true
        cell.icon.addGestureRecognizer(tapGesture)
        
        return cell
    }
    
    
}
