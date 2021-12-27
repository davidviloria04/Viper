//
//  HomeRouter.swift
//  Viper- 02
//
//  Created by David Viloria Ortega on 16/12/21.
//

import Foundation
import UIKit


class HomeRouter{
    
    var viewController: UIViewController
    
    init(view: UIViewController) {
        self.viewController = view
    }
    
    class func build() -> UIViewController {

        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)

        let view = storyboard.instantiateViewController(withIdentifier: "homeView") as! ViewController
        let interactor = HomeInteractor()
        let router = HomeRouter(view: view)
        let presenter = HomePresenter(interactor: interactor, router: router)

        view.presenter = presenter
        interactor.presenter = presenter
        presenter.router = router
        presenter.view = view
        presenter.interactor = interactor


        return view
    }
}

extension HomeRouter: HomeRouterProtocol{

}
