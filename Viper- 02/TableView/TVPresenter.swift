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
    var cellType : [CellType]?
    
    init(interactor: TVInteractorProtocol, router: TVRouterProtocol) {
        self.interactor = interactor
        self.router = router
    }
}

extension TVPresenter: TVPresenterProtocol {
    func viewDidLoad() {
        self.cellType = interactor?.getCellType()
        view?.ViewCell(cells: self.cellType ?? [])
        view?.NumCell(numCell: self.cellType?.count ?? 0)
        print(interactor?.getDatos())
    }
}
