//
//  TVRouter.swift
//  Viper- 02
//
//  Created by David Viloria Ortega on 16/12/21.
//

import Foundation
import UIKit


class TVRouter{
    
    
    class func build() -> UIViewController {

        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)

        let view = storyboard.instantiateViewController(withIdentifier: "TVView") as! TVViewController
        let interactor = TVInteractor()
        let router = TVRouter()
        let presenter = TVPresenter(interactor: interactor, router: router)

        view.presenter = presenter
        presenter.router = router
        presenter.view = view
        presenter.interactor = interactor


        return view
        
       
        
    }
}

extension TVRouter: TVRouterProtocol{

}
