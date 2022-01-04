//
//  ViewController.swift
//  Viper- 02
//
//  Created by David Viloria Ortega on 16/12/21.
//

import UIKit

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
        
        register(classType: Mod1TitleTableViewCell.self)
        register(classType: MyCollectionViewCell.self)
        tableView.reloadData()    }
    
    
    private func register(classType: AnyClass) {
        let id = String(describing: classType.self)
        tableView.register(UINib(nibName: id, bundle: nil), forCellReuseIdentifier: id)
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

extension TVViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.listCountry.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if (listCountry[indexPath.row].type == 1) {
            guard var cell = tableView.dequeueReusableCell(withIdentifier: "Mod1TitleTableViewCell") as? Mod1TitleTableViewCell else { return UITableViewCell() }
            cell.titleLabel.text = listCountry[indexPath.row].name
            cell.fetchImage(urlString: listCountry[indexPath.row].urlImage)
            return cell
            
        } else if (listCountry[indexPath.row].type == 2) {
            guard var cell = tableView.dequeueReusableCell(withIdentifier: "cityStyle3") as? cityStyle3 else { return UITableViewCell() }
            cell.cityLabel.text = listCountry[indexPath.row].name
            cell.fetchImage(urlString: listCountry[indexPath.row].urlImage)
            return cell
            
        }else{
            guard var cell = tableView.dequeueReusableCell(withIdentifier: "MyCollectionViewCell") as? MyCollectionViewCell else { return UITableViewCell() }
            
            return cell
        }
        
    }
    
    
}




