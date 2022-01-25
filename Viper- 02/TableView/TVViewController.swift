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
    var listCountry = [Apps]()
    let screenSize: CGRect = UIScreen.main.bounds
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //Comunico a mi vista con el presenter
        presenter?.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        register(classType: HomeTableViewCell.self)
        register(classType: Greetings.self)
        register(classType: showMoreShorcuts.self)
        register(classType: MiniAppsShorcuts.self)
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
    func showAlert(){
        let alert = UIAlertController(title: "Ver mas", message: "Haz pulsado el botón ver  mas", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ir a Ver mas", style: .default))
        alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel))
        self.present(alert, animated: true)
    }
}

extension TVViewController: TVViewProtocol{
    func NumCountry(numCountry: Int) {
        self.numRow = numCountry
        print(numCountry)
    }
    
    func ViewCountry(countries: [Apps]) {
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
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "HomeTableViewCell") as? HomeTableViewCell else { return UITableViewCell() }
            cell.listCities = listCountry[indexPath.row].miniApps
            cell.delegate = self
            return cell
            
        } else if (listCountry[indexPath.row].type == 2) {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "MiniAppsShorcuts") as? MiniAppsShorcuts else { return UITableViewCell() }
            cell.listAr = listCountry[indexPath.row].shortcuts
            cell.delegate = self
            return cell
            
        }else if (listCountry[indexPath.row].type == 3){
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "Greetings") as? Greetings else { return UITableViewCell()
            }
            return cell
        } else if (listCountry[indexPath.row].type == 4){
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "showMoreShorcuts") as? showMoreShorcuts else { return UITableViewCell()}
            cell.delegate = self
            return cell
        } else {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "BannerTableViewCell") as? BannerTableViewCell else { return UITableViewCell()
            }
            return cell
        }
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if(listCountry[indexPath.row].type == 4){
            return CGFloat((Int(screenSize.maxY)/8) + ((listCountry[indexPath.row].miniApps.count/4) * 90))
        } else {
            return CGFloat((Int(screenSize.maxY)/10) + ((listCountry[indexPath.row].miniApps.count/4) * 120))

        }
        //return CGFloat(100 + ((listCountry[indexPath.row].cities.count/4) * 90))
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        alert()
    }
}




