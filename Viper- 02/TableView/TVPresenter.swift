//
//  TVPresenter.swift
//  Viper- 02
//
//  Created by David Viloria Ortega on 16/12/21.
//

import Foundation


class TVPresenter {
    
    weak var view: TVViewProtocol?
    var interactor: TVInteractorProtocol?
    var router: TVRouterProtocol?
    
    var countries : [Country]?
    
    init(interactor: TVInteractorProtocol, router: TVRouterProtocol) {
        self.interactor = interactor
        self.router = router
    }
    
}

extension TVPresenter: TVPresenterProtocol {
    func viewDidLoad() {
        self.countries = interactor?.getCountries()
        view?.ViewCountry(countries: self.countries ?? [])
        view?.NumCountry(numCountry: self.countries?.count ?? 0)
        print(interactor?.getDatos())
    }
}
