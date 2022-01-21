//
//  Mod3TableViewCell.swift
//  Viper- 02
//
//  Created by David Viloria Ortega on 20/01/22.
//

import UIKit

class Mod3TableViewCell: UITableViewCell{
    
    
    @IBOutlet weak var citiesCV: UICollectionView!
    
    private var indexPath: IndexPath?
    var delegate : TVViewController?
    var listAr = [Shortcuts]()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        citiesCV.dataSource = self
        citiesCV.delegate = self
        register(classType: AccesosRapidos.self)
        self.citiesCV.collectionViewLayout = flowLayout2
        citiesCV.reloadData()

        // Initialization code
    }
    
    private func register(classType: AnyClass) {
            let id = String(describing: classType.self)
        citiesCV.register(UINib(nibName: id, bundle: nil), forCellWithReuseIdentifier: id)
        }
    
}

extension Mod3TableViewCell : UICollectionViewDelegate, UICollectionViewDataSource {
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
var flowLayout2: UICollectionViewFlowLayout {
    let flowLayout = UICollectionViewFlowLayout()
    // edit properties here
    flowLayout.itemSize = CGSize(width: 80, height: 80)
    flowLayout.sectionInset = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
    flowLayout.minimumInteritemSpacing = 4
    // edit properties here

    return flowLayout
}
