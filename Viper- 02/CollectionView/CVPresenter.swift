//
//  CVPresenter.swift
//  Viper- 02
//
//  Created by David Viloria Ortega on 27/12/21.
//  
//

import Foundation

class CVPresenter  {
    
    // MARK: Properties
    weak var view: CVViewProtocol?
    var interactor: CVInteractorInputProtocol?
    var wireFrame: CVWireFrameProtocol?
    
}

extension CVPresenter: CVPresenterProtocol {
    // TODO: implement presenter methods
    func viewDidLoad() {
    }
}

extension CVPresenter: CVInteractorOutputProtocol {
    // TODO: implement interactor output methods
}
