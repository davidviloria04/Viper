//
//  Mod3TableViewCell.swift
//  Viper- 02
//
//  Created by David Viloria Ortega on 20/01/22.
//

import UIKit

class MiniAppsShorcuts: UITableViewCell{
    
    
    @IBOutlet weak var miniAppsCV: UICollectionView!
    
    private var indexPath: IndexPath?
    var delegate : TVViewController?
    var listAr = [Shortcuts]()
    let screenSize: CGRect = UIScreen.main.bounds
    
    override func awakeFromNib() {
        super.awakeFromNib()
        miniAppsCV.dataSource = self
        miniAppsCV.delegate = self
        register(classType: AccesosRapidos.self)
        self.miniAppsCV.collectionViewLayout = flowLayout2
        miniAppsCV.reloadData()

        // Initialization code
    }
    var flowLayout2: UICollectionViewFlowLayout {
        let flowLayout = UICollectionViewFlowLayout()
        // edit properties here
        if(screenSize.height <= 667){
            flowLayout.itemSize = CGSize(width: (screenSize.width / 5), height: (screenSize.height / 5 ))}
        if(screenSize.height > 667 && screenSize.height <= 736){
            flowLayout.itemSize = CGSize(width: screenSize.width / 5, height: screenSize.height / 7 )}
        if(screenSize.height > 736 && screenSize.height <= 812){
            flowLayout.itemSize = CGSize(width: screenSize.width / 5, height: screenSize.height / 8 )
        }else {flowLayout.itemSize = CGSize(width: screenSize.width / 5, height: screenSize.height / 7)}
        
        flowLayout.sectionInset = UIEdgeInsets(top: 10, left: 15, bottom: 5, right: 15)
        flowLayout.minimumInteritemSpacing = 10
        // edit properties here

        return flowLayout
    }
    
    private func register(classType: AnyClass) {
            let id = String(describing: classType.self)
        miniAppsCV.register(UINib(nibName: id, bundle: nil), forCellWithReuseIdentifier: id)
        }

    
}

extension MiniAppsShorcuts : UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.listAr.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AccesosRapidos", for: indexPath) as? AccesosRapidos else {return UICollectionViewCell()}
            cell.labelAR.text = listAr[indexPath.row].name
        cell.fetchImage(urlString: listAr[indexPath.row].urlImage)
        cell.labelAR.lineBreakMode = .byWordWrapping
        cell.labelAR.numberOfLines = 0
        if(listAr[indexPath.row].isNew){
            cell.isNew.isHidden = false
            if (listAr[indexPath.row].color == 0){
                cell.isNew.backgroundColor = UIColor.red
            }
            if (listAr[indexPath.row].color == 1){
                cell.isNew.backgroundColor = UIColor.blue
            }
            return cell
        }
        if(listAr[indexPath.row].isNew == false){
            cell.isNew.isHidden = true
            cell.isNew.backgroundColor = UIColor.white
            return cell
        }
            return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)  {
        delegate?.alert()
    }
    
}

