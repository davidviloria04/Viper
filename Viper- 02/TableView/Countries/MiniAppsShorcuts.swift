//
//  Mod3TableViewCell.swift
//  Viper- 02
//
//  Created by David Viloria Ortega on 20/01/22.
//

import UIKit
import AssistantKit

class MiniAppsShorcuts: UITableViewCell{
    
    
    @IBOutlet weak var citiesCV: UICollectionView!
    
    private var indexPath: IndexPath?
    var delegate : TVViewController?
    var listAr = [Shortcuts]()
    let family = Device.screen.family
    let screenSize: CGRect = UIScreen.main.bounds
//    var sizeh = 0
//    var sizew = 0
    
    override func awakeFromNib() {
        super.awakeFromNib()
        citiesCV.dataSource = self
        citiesCV.delegate = self
        register(classType: AccesosRapidos.self)
//        screenSizeH()
//        screenSizeW()
        self.citiesCV.collectionViewLayout = flowLayout2
        citiesCV.reloadData()

        // Initialization code
    }
    var flowLayout2: UICollectionViewFlowLayout {
        let flowLayout = UICollectionViewFlowLayout()
        // edit properties here
        flowLayout.itemSize = CGSize(width: screenSize.width / 5, height: screenSize.height / 10)
        //flowLayout.itemSize = CGSize(width: sizew, height: sizeh)
        flowLayout.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 5, right: 10)
        flowLayout.minimumInteritemSpacing = 4
        // edit properties here

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
//            return sizeh = 120
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
//            return sizew = 120
//        }
//    }
    
}

extension MiniAppsShorcuts : UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.listAr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AccesosRapidos", for: indexPath) as? AccesosRapidos else {return UICollectionViewCell()}
            cell.labelAR.text = listAr[indexPath.row].name
        cell.fetchImage(urlString: listAr[indexPath.row].urlImage)
            return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)  {
        delegate?.alert()
    }
    
}

