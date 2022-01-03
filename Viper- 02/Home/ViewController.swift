//
//  ViewController.swift
//  Viper- 02
//
//  Created by David Viloria Ortega on 16/12/21.
//

import UIKit

class ViewController: UIViewController {
    
    var presenter: HomePresenterProtocol?

    @IBOutlet weak var vistaBanner: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //Comunico a mi vista con el presenter
        presenter?.viewDidLoad()
        
        let banner = Banner()
        vistaBanner.addSubview(banner)
    }

    @IBAction func CallViper(_ sender: Any) {
        
        let viewTV  = TVRouter.build()
        navigationController?.pushViewController(viewTV, animated: true)
    }
    
    
}

extension ViewController: HomeViewProtocol{
    // TODO: implement view output methods
    
}


