//
//  ModelHome.swift
//  Viper- 02
//
//  Created by David Viloria Ortega on 14/02/22.
//

import Foundation
import UIKit


final class ModelHome{
    func executeApi(){
        let urlSession = URLSession.shared
        let url = URL(string: "http://localhost:3000/ClaroPay-WS/home")
        
        urlSession.dataTask(with: url!) { data, response, error in
            print("Data \(String(describing: data))")
            print("Responde \(String(describing: response))")
            print("Error \(String(describing: error))")
        }
    }
}
