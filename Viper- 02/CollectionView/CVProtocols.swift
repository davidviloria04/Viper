//
//  CVProtocols.swift
//  Viper- 02
//
//  Created by David Viloria Ortega on 27/12/21.
//  
//

import Foundation
import UIKit

protocol CVViewProtocol: class {
    // PRESENTER -> VIEW
    var presenter: CVPresenterProtocol? { get set }
}

protocol CVWireFrameProtocol: class {
    // PRESENTER -> WIREFRAME
    static func createCVModule() -> UIViewController
}

protocol CVPresenterProtocol: class {
    // VIEW -> PRESENTER
    var view: CVViewProtocol? { get set }
    var interactor: CVInteractorInputProtocol? { get set }
    var wireFrame: CVWireFrameProtocol? { get set }
    
    func viewDidLoad()
}

protocol CVInteractorOutputProtocol: class {
// INTERACTOR -> PRESENTER
}

protocol CVInteractorInputProtocol: class {
    // PRESENTER -> INTERACTOR
    var presenter: CVInteractorOutputProtocol? { get set }
}
