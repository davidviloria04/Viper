//
//  CVInteractor.swift
//  Viper- 02
//
//  Created by David Viloria Ortega on 27/12/21.
//  
//

import Foundation

class CVInteractor: CVInteractorInputProtocol {

    // MARK: Properties
    weak var presenter: CVInteractorOutputProtocol?
    var localDatamanager: CVLocalDataManagerInputProtocol?
    var remoteDatamanager: CVRemoteDataManagerInputProtocol?

}

extension CVInteractor: CVRemoteDataManagerOutputProtocol {
    // TODO: Implement use case methods
}
