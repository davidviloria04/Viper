//
//  TitleTableViewCell.swift
//  SDKTransfer
//
//  Created by Juan Carlos Balderas Saldaña on 30/04/21.
//  Copyright © 2021 Diego Palomares Castro. All rights reserved.
//

import UIKit

class HomeTableViewCell: UITableViewCell{
    
    
    @IBOutlet weak var miniAppsCV: UICollectionView!
    
    
    private var indexPath: IndexPath?
    var delegate : TVViewController?
    var listMiniApps = [MiniApps]()
    
    let screenSize: CGRect = UIScreen.main.bounds
    
    override func awakeFromNib() {
        super.awakeFromNib()
        miniAppsCV.dataSource = self
        miniAppsCV.delegate = self
        register(classType: CollectionViewCell.self)
        self.miniAppsCV.collectionViewLayout = flowLayout
        miniAppsCV.reloadData()
        
        // Initialization code
    }
    var flowLayout: UICollectionViewFlowLayout {
        let flowLayout = UICollectionViewFlowLayout()
        // edit properties here
        flowLayout.itemSize = CGSize(width: screenSize.width / 4, height: screenSize.height / 10)
        flowLayout.sectionInset = UIEdgeInsets(top: 10, left: 20, bottom: 10, right: 20)
        flowLayout.minimumInteritemSpacing = 4
        // edit properties hered
        
        return flowLayout
    }
    
    private func register(classType: AnyClass) {
        let id = String(describing: classType.self)
        miniAppsCV.register(UINib(nibName: id, bundle: nil), forCellWithReuseIdentifier: id)
    }
    
}

extension HomeTableViewCell : UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.listMiniApps.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as? CollectionViewCell else {return UICollectionViewCell()}
        cell.miniAppName.text = listMiniApps[indexPath.row].name
        cell.icon.image = UIImage(named: listMiniApps[indexPath.row].urlImage)
        if(listMiniApps[indexPath.row].isNew){
            cell.newLabel.isHidden = false
            if(listMiniApps[indexPath.row].color == 0){
                cell.newLabel.backgroundColor = UIColor.red
            }
            return cell
        }
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)  {
        delegate?.alert()
    }
    
}



