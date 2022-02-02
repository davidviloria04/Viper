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
    var listCells = [CellType]()
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
        register(classType: GreetingsTableViewCell.self)
        tableView.reloadData()
        
        //Skeleton
        
        tableView.isSkeletonable = true
        
    }
    private func register(classType: AnyClass) {
        let id = String(describing: classType.self)
        tableView.register(UINib(nibName: id, bundle: nil), forCellReuseIdentifier: id)
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
    
    func ViewCountry(countries: [CellType]) {
        print(countries)
        self.listCells = countries
    }
    // TODO: implement view output methods
}

extension TVViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.listCells.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if (listCells[indexPath.row].type == 1) {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "HomeTableViewCell") as? HomeTableViewCell else { return UITableViewCell() }
            cell.listCities = listCells[indexPath.row].miniApps
            cell.delegate = self
            return cell
            
        } else if (listCells[indexPath.row].type == 2) {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "MiniAppsShorcuts") as? MiniAppsShorcuts else { return UITableViewCell() }
            cell.listAr = listCells[indexPath.row].shortcuts
            cell.delegate = self
            return cell
            
        }else if (listCells[indexPath.row].type == 3){
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "GreetingsTableViewCell") as? GreetingsTableViewCell else { return UITableViewCell()
            }
            return cell
        } else if (listCells[indexPath.row].type == 4){
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "showMoreShorcuts") as? showMoreShorcuts else { return UITableViewCell()}
            cell.delegate = self
            return cell
        } else {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "BannerTableViewCell") as? BannerTableViewCell else { return UITableViewCell()
            }
            cell.fetchImage(urlString: listCells[indexPath.row].banners.urlImage) 
            return cell
        }
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if(listCells[indexPath.row].type == 4){
            if(screenSize.height >= 667 && screenSize.height <= 736)
            {return CGFloat((Int(screenSize.maxY)/6) + ((listCells[indexPath.row].miniApps.count/4) * 100))}
            if(screenSize.height > 736 && screenSize.height <= 812)
            {return CGFloat((Int(screenSize.maxY)/8) + ((listCells[indexPath.row].miniApps.count/4) * 50))}
            
            return CGFloat((Int(screenSize.maxY)/8) + ((listCells[indexPath.row].miniApps.count/4) * 90))
        }
        if(listCells[indexPath.row].type == 3){
            if(screenSize.height >= 667 && screenSize.height <= 736)
            {return CGFloat((Int(screenSize.maxY)/7) + ((listCells[indexPath.row].miniApps.count/4) * 100))}
            if(screenSize.height > 736 && screenSize.height <= 896)
            {return CGFloat((Int(screenSize.maxY)/10) + ((listCells[indexPath.row].miniApps.count/4) * 90))}
            if(screenSize.height >= 926)
            {return CGFloat((Int(screenSize.maxY)/11) + ((listCells[indexPath.row].miniApps.count/4) * 90))}
            return CGFloat((Int(screenSize.maxY)/8) + ((listCells[indexPath.row].miniApps.count/4) * 90))
        }
        if (listCells[indexPath.row].type == 1) {
            
            if (screenSize.height > 736 && screenSize.height <= 896){
                return CGFloat((Int(screenSize.maxY)/8) + ((listCells[indexPath.row].miniApps.count/4) * 100))
            }
            if (screenSize.height >= 926){
                return CGFloat((Int(screenSize.maxY)/8) + ((listCells[indexPath.row].miniApps.count/4) * 105))
            }
            return CGFloat((Int(screenSize.maxY)/10) + ((listCells[indexPath.row].miniApps.count/4) * 100))

        }
        if (listCells[indexPath.row].type == 2) {
            if (screenSize.height >= 667 && screenSize.height <= 736){
                return CGFloat((Int(screenSize.maxY)/4) + ((listCells[indexPath.row].miniApps.count/4) * 100))
            }
            if (screenSize.height >= 812 && screenSize.height < 896){
                return CGFloat((Int(screenSize.maxY)/5) + ((listCells[indexPath.row].miniApps.count/4) * 90))
            }
            if (screenSize.height >= 896 && screenSize.height < 926){
                return CGFloat((Int(screenSize.maxY)/5) + ((listCells[indexPath.row].miniApps.count/4) * 120))
            }
            if (screenSize.height >= 926){
                return CGFloat((Int(screenSize.maxY)/4) + ((listCells[indexPath.row].miniApps.count/4) * 105))
            }
            return CGFloat((Int(screenSize.maxY)/10) + ((listCells[indexPath.row].miniApps.count/4) * 110))

        }
        else {
            return CGFloat(100 + ((listCells[indexPath.row].miniApps.count/4) * 90))
        }
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        alert()
        debugPrint(screenSize.height)
    }
}




