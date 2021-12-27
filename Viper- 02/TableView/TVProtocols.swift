//
//  TVProtocols.swift
//  Viper- 02
//
//  Created by David Viloria Ortega on 16/12/21.
//

import Foundation
import UIKit


protocol TVViewProtocol: AnyObject {
    // Presenter -> View
    var presenter: TVPresenterProtocol? { get set }
    func ViewCountry(countries :[Country])
    func NumCountry(numCountry :Int)
}


protocol TVRouterProtocol: AnyObject{
    //Presenter -> Router
    static func build() -> UIViewController
}

protocol TVPresenterProtocol: AnyObject{
    //View ---->> Presenter
    var view: TVViewProtocol? { get set }
    var router: TVRouterProtocol? { get set }
    var interactor: TVInteractorProtocol? {get set}
    
    func viewDidLoad() -> Void
}


protocol TVInteractorProtocol: AnyObject {
    func getDatos() ->[String]
    func getCoutries() ->[Country]
}
