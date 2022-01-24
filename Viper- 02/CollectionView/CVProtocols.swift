//
//  CVProtocols.swift
//  Viper- 02
//
//  Created by David Viloria Ortega on 27/12/21.
//  
//

import Foundation
import UIKit

protocol CVViewProtocol: AnyObject {
    // PRESENTER -> VIEW
    var presenter: CVPresenterProtocol? { get set }
}

protocol CVWireFrameProtocol: AnyObject {
    // PRESENTER -> WIREFRAME
    static func createCVModule() -> UIViewController
}

protocol CVPresenterProtocol: AnyObject {
    // VIEW -> PRESENTER
    var view: CVViewProtocol? { get set }
    var interactor: CVInteractorInputProtocol? { get set }
    var wireFrame: CVWireFrameProtocol? { get set }
    
    func viewDidLoad()
}

protocol CVInteractorOutputProtocol: AnyObject {
// INTERACTOR -> PRESENTER
}

protocol CVInteractorInputProtocol: AnyObject {
    // PRESENTER -> INTERACTOR
    var presenter: CVInteractorOutputProtocol? { get set }
}
