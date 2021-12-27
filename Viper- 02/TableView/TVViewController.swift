//
//  ViewController.swift
//  Viper- 02
//
//  Created by David Viloria Ortega on 16/12/21.
//

import UIKit

class TVViewController: UIViewController {
    
    var presenter: TVPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //Comunico a mi vista con el presenter
        presenter?.viewDidLoad()
    }
}

extension TVViewController: TVViewProtocol{
    func NumCountry(numCountry: Int) {
        print(numCountry)
    }
    
    func ViewCountry(countries: [Country]) {
        print(countries)
        
    }
    
    // TODO: implement view output methods
    
}


