//
//  TitleTableViewCell.swift
//  SDKTransfer
//
//  Created by Juan Carlos Balderas Saldaña on 30/04/21.
//  Copyright © 2021 Diego Palomares Castro. All rights reserved.
//

import UIKit
import AssistantKit

class Mod1TitleTableViewCell: UITableViewCell{
    
    
    @IBOutlet weak var citiesCV: UICollectionView!
    
    //citiesCV = UICollectionView(frame: .zero, collectionViewLayout: flowLayout)
    
    private var indexPath: IndexPath?
    var delegate : TVViewController?
    var listCities = [Cities]()
    let family = Device.screen.family
    var sizeh = 0
    var sizew = 0
    
    override func awakeFromNib() {
        super.awakeFromNib()
        citiesCV.dataSource = self
        citiesCV.delegate = self
        register(classType: CollectionViewCell.self)
        screenSizeH()
        screenSizeW()
        self.citiesCV.collectionViewLayout = flowLayout
        
        citiesCV.reloadData()

        // Initialization code
    }
    var flowLayout: UICollectionViewFlowLayout {
        let flowLayout = UICollectionViewFlowLayout()
        // edit properties here
        
        flowLayout.itemSize = CGSize(width: sizew , height: sizeh)
        flowLayout.sectionInset = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
        flowLayout.minimumInteritemSpacing = 4
        // edit properties here

        return flowLayout
    }
    
    private func register(classType: AnyClass) {
            let id = String(describing: classType.self)
        citiesCV.register(UINib(nibName: id, bundle: nil), forCellWithReuseIdentifier: id)
        }
    
    public func screenSizeH(){
        if (family == .old) {
            return sizeh = 50
        }
        if (family == .medium) {
            return sizeh = 80
        }
        if (family == .small) {
            return sizeh = 70
        }
        if (family == .big) {
            return sizeh = 100
        }
    }
    
    public func screenSizeW(){
        if (family == .old) {
            return sizew = 60
        }
        if (family == .medium) {
            return sizew = 120
        }
        if (family == .small) {
            return sizew = 70
        }
        if (family == .big) {
            return sizew = 120
        }
    }
    
}

extension Mod1TitleTableViewCell : UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.listCities.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            guard var cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as? CollectionViewCell else {return UICollectionViewCell()}
            cell.cityname.text = listCities[indexPath.row].name
            return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)  {
        delegate?.alert()
        debugPrint(family)
    }
    
}



