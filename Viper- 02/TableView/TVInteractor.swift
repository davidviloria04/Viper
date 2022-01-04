//
//  TVInteractor.swift
//  Viper- 02
//
//  Created by David Viloria Ortega on 16/12/21.
//

import Foundation

extension TVInteractor: TVInteractorProtocol {
    func getCountries() -> [Country] {
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
       return "Me llamo Val"
    }
    
    func getDatosCity() -> [String] {
        let myCities = ["Madrid", "Ciudad de mexico", "Lima", "Bogota", "Buenos aires", "Washingtong", "Paris", "Roma"]
        return myCities
    }
    
    
    func getDatosCountry() -> [Country] {
        var listCountry = [Country]()
        listCountry.append(Country(name:"España" , urlImage: "https://www.ambientum.com/wp-content/uploads/2019/01/bandera-australia-696x348.png", type: 1))
        listCountry.append(Country(name:"Mexico", urlImage: "https://www.ambientum.com/wp-content/uploads/2019/01/bandera-australia-696x348.png", type: 2 ))
        listCountry.append(Country(name:"Perú", urlImage: "https://www.ambientum.com/wp-content/uploads/2019/01/bandera-australia-696x348.png" , type: 2))
        listCountry.append(Country(name:"Colombia", urlImage: "https://www.ambientum.com/wp-content/uploads/2019/01/bandera-australia-696x348.png", type: 1 ))
        listCountry.append(Country(name:"Argentina", urlImage: "https://www.ambientum.com/wp-content/uploads/2019/01/bandera-australia-696x348.png", type: 1 ))
        
       return listCountry
    }
    
    func getDatosCities() -> [Cities] {
        var listCity = [Cities]()
        listCity.append(Cities(name: "Madrid", urlImage: "avatar1", type: 1))
        listCity.append(Cities(name: "Ciudad de mexico", urlImage: "avatar1", type: 1))
        listCity.append(Cities(name: "Lima", urlImage: "avatar1", type: 1))
        listCity.append(Cities(name: "Bogotá", urlImage: "avatar1", type: 1))
        listCity.append(Cities(name: "Buenos aires", urlImage: "avatar1", type: 1))
        
        return listCity
    }
//Implementar casos de uso
}
