//
//  HomeProtocols.swift
//  Viper- 02
//
//  Created by David Viloria Ortega on 16/12/21.
//

import Foundation
import UIKit


protocol HomeViewProtocol: AnyObject {
    // Presenter -> View
    var presenter: HomePresenterProtocol? { get set }
}


protocol HomeRouterProtocol: AnyObject{
    //Presenter -> Router
    static func build() -> UIViewController
}

protocol HomePresenterProtocol: AnyObject{
    //View ---->> Presenter
    var view: HomeViewProtocol? { get set }
    var router: HomeRouterProtocol? { get set }
    var interactor: HomeInteractorInputProtocol? {get set}
    
    func viewDidLoad() -> Void
}

protocol HomeInteractorOutputProtocol: AnyObject {
    // INTERACTOR -> PRESENTER
}

protocol HomeInteractorInputProtocol: AnyObject {
    // PRESENTER -> INTERACTOR
    var presenter: HomeInteractorOutputProtocol? { get set }
}
