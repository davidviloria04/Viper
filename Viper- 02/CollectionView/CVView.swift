//
//  CVView.swift
//  Viper- 02
//
//  Created by David Viloria Ortega on 27/12/21.
//  
//

import Foundation
import UIKit

class CVView: UIViewController {

    // MARK: Properties
    var presenter: CVPresenterProtocol?

    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension CVView: CVViewProtocol {
    // TODO: implement view output methods
}
