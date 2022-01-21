//
//  ViewController.swift
//  Viper- 02
//
//  Created by David Viloria Ortega on 16/12/21.
//

import UIKit
import SkeletonView

class TVViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var presenter: TVPresenterProtocol?
    var numRow: Int = 0
    var listCountry = [Country]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //Comunico a mi vista con el presenter
        presenter?.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        register(classType: Mod1TitleTableViewCell.self)
        register(classType: MyCollectionViewCell.self)
        register(classType: cityStyle3.self)
        register(classType: Mod2TitleTableViewCell.self)
        register(classType: Mod3TableViewCell.self)
        register(classType: BannerTableViewCell.self)
        tableView.reloadData()
        
        //Skeleton
        setupSkeleton()
        
    }
    
    
    private func register(classType: AnyClass) {
        let id = String(describing: classType.self)
        tableView.register(UINib(nibName: id, bundle: nil), forCellReuseIdentifier: id)
    }
    
    private func setupSkeleton(){
        tableView.isSkeletonable = true
    }
    
    func alert(){
        let alert = UIAlertController(title: "Pulsado", message: "Haz pulsado", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default))
        self.present(alert, animated: true)
    }
}

extension TVViewController: TVViewProtocol{
    func NumCountry(numCountry: Int) {
        self.numRow = numCountry
        print(numCountry)
    }
    
    func ViewCountry(countries: [Country]) {
        print(countries)
        self.listCountry = countries
    }
    
    // TODO: implement view output methods
    
}

extension TVViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.listCountry.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if (listCountry[indexPath.row].type == 1) {
            guard var cell = tableView.dequeueReusableCell(withIdentifier: "Mod1TitleTableViewCell") as? Mod1TitleTableViewCell else { return UITableViewCell() }
            cell.listCities = listCountry[indexPath.row].cities
            cell.delegate = self
            return cell
            
        } else if (listCountry[indexPath.row].type == 2) {
            guard var cell = tableView.dequeueReusableCell(withIdentifier: "Mod3TableViewCell") as? Mod3TableViewCell else { return UITableViewCell() }
            cell.listCities = listCountry[indexPath.row].cities
            cell.delegate = self
            return cell
            
        }else if (listCountry[indexPath.row].type == 3){
            guard var cell = tableView.dequeueReusableCell(withIdentifier: "MyCollectionViewCell") as? MyCollectionViewCell else { return UITableViewCell()
            }
            return cell
        } else if (listCountry[indexPath.row].type == 4){
            guard var cell = tableView.dequeueReusableCell(withIdentifier: "Mod2TitleTableViewCell") as? Mod2TitleTableViewCell else { return UITableViewCell()
            }
            return cell
        } else {
            guard var cell = tableView.dequeueReusableCell(withIdentifier: "BannerTableViewCell") as? BannerTableViewCell else { return UITableViewCell()
            }
            return cell
        }
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(100 + ((listCountry[indexPath.row].cities.count/4) * 80))
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        alert()
    }
}




