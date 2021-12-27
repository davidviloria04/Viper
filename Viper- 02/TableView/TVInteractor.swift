//
//  TVInteractor.swift
//  Viper- 02
//
//  Created by David Viloria Ortega on 16/12/21.
//

import Foundation

extension TVInteractor: TVInteractorProtocol {
    func getCoutries() -> [Country] {
        return getDatosCountry()
    }
    
    
    
    func getDatos() -> [String] {
        return getDatosOutPut()
    }
    
}

class TVInteractor {
    
    
    func getDatosOutPut() -> [String] {
    
        let myCountries = ["España", "Mexico", "Perú", "Colombia", "Argentina", "EEUU", "Francia", "Italia"]
       return myCountries
    }
    
    func getDatosString() -> String {
    
        
       return "Me llamo Valerie"
    }
    
    
    func getDatosCountry() -> [Country] {
        var listCountry = [Country]()
        listCountry.append(Country(name:"España" ))
        listCountry.append(Country(name:"Mexico" ))
        listCountry.append(Country(name:"Perú" ))
        listCountry.append(Country(name:"Colombia" ))
        listCountry.append(Country(name:"Argentina" ))
        
       return listCountry
    }
    
//Implementar casos de uso
}
