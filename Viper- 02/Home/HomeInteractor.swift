//
//  HomeInteractor.swift
//  Viper- 02
//
//  Created by David Viloria Ortega on 16/12/21.
//

import Foundation

class HomeInteractor: HomeInteractorInputProtocol {
    weak var presenter: HomeInteractorOutputProtocol?
}

extension HomeInteractor: HomeInteractorOutputProtocol {
    //Implementar casos de uso
}
