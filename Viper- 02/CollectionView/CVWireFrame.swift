//
//  CVWireFrame.swift
//  Viper- 02
//
//  Created by David Viloria Ortega on 27/12/21.
//  
//

import Foundation
import UIKit

class CVWireFrame: CVWireFrameProtocol {

    class func createCVModule() -> UIViewController {
        let navController = mainStoryboard.instantiateViewController(withIdentifier: "CVView")
        if let view = navController.children.first as? CVView {
            let presenter: CVPresenterProtocol & CVInteractorOutputProtocol = CVPresenter()
            let interactor: CVInteractorInputProtocol & CVRemoteDataManagerOutputProtocol = CVInteractor()
            let localDataManager: CVLocalDataManagerInputProtocol = CVLocalDataManager()
            let remoteDataManager: CVRemoteDataManagerInputProtocol = CVRemoteDataManager()
            let wireFrame: CVWireFrameProtocol = CVWireFrame()
            
            view.presenter = presenter
            presenter.view = view
            presenter.wireFrame = wireFrame
            presenter.interactor = interactor
            interactor.presenter = presenter
            interactor.localDatamanager = localDataManager
            interactor.remoteDatamanager = remoteDataManager
            remoteDataManager.remoteRequestHandler = interactor
            
            return navController
        }
        return UIViewController()
    }
    
    static var mainStoryboard: UIStoryboard {
        return UIStoryboard(name: "CVView", bundle: Bundle.main)
    }
    
}
