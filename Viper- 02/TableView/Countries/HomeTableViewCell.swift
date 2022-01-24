//
//  TitleTableViewCell.swift
//  SDKTransfer
//
//  Created by Juan Carlos Balderas Saldaña on 30/04/21.
//  Copyright © 2021 Diego Palomares Castro. All rights reserved.
//

import UIKit
import AssistantKit

class HomeTableViewCell: UITableViewCell{
    
    
    @IBOutlet weak var citiesCV: UICollectionView!
    
    //citiesCV = UICollectionView(frame: .zero, collectionViewLayout: flowLayout)
    
    private var indexPath: IndexPath?
    var delegate : TVViewController?
    var listCities = [MiniApps]()
    let family = Device.screen.family
//    var sizeh = 0
//    var sizew = 0
    let screenSize: CGRect = UIScreen.main.bounds
    
    override func awakeFromNib() {
        super.awakeFromNib()
        citiesCV.dataSource = self
        citiesCV.delegate = self
        register(classType: CollectionViewCell.self)
//        screenSizeH()
//        screenSizeW()
        self.citiesCV.collectionViewLayout = flowLayout
        
        citiesCV.reloadData()

        // Initialization code
    }
    var flowLayout: UICollectionViewFlowLayout {
        let flowLayout = UICollectionViewFlowLayout()
        // edit properties here
        flowLayout.itemSize = CGSize(width: screenSize.width / 4, height: screenSize.height / 10)
        //flowLayout.itemSize = CGSize(width: sizew , height: sizeh)
        flowLayout.sectionInset = UIEdgeInsets(top: 10, left: 20, bottom: 10, right: 20)
        flowLayout.minimumInteritemSpacing = 4
        // edit properties hered

        return flowLayout
    }
    
    private func register(classType: AnyClass) {
            let id = String(describing: classType.self)
        citiesCV.register(UINib(nibName: id, bundle: nil), forCellWithReuseIdentifier: id)
        }
    
//    public func screenSizeH(){
//        if (family == .old) {
//            return sizeh = 50
//        }
//        if (family == .medium) {
//            return sizeh = 100
//        }
//        if (family == .small) {
//            return sizeh = 70
//        }
//        if (family == .big) {
//            return sizeh = 100
//        }
//    }
    
//    public func screenSizeW(){
//        if (family == .old) {
//            return sizew = 60
//        }
//        if (family == .medium) {
//            return sizew = 100
//        }
//        if (family == .small) {
//            return sizew = 70
//        }
//        if (family == .big) {
//            return sizew = 100
//        }
//    }
    
}

extension HomeTableViewCell : UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.listCities.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as? CollectionViewCell else {return UICollectionViewCell()}
            cell.cityname.text = listCities[indexPath.row].name
            return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)  {
        delegate?.alert()
        debugPrint(family)
    }
    
}



