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
        listCountry.append(Country(name:"España" , urlImage: "https://www.ambientum.com/wp-content/uploads/2019/01/bandera-australia-696x348.png", type: 1, cities: getDatosCities()))
        listCountry.append(Country(name:"Mexico", urlImage: "https://www.ambientum.com/wp-content/uploads/2019/01/bandera-australia-696x348.png", type: 3, cities: []))
        listCountry.append(Country(name:"Perú", urlImage: "https://www.ambientum.com/wp-content/uploads/2019/01/bandera-australia-696x348.png" , type: 3, cities: []))
        listCountry.append(Country(name:"Colombia", urlImage: "https://www.ambientum.com/wp-content/uploads/2019/01/bandera-australia-696x348.png", type: 1, cities: getDatosCities()))
        listCountry.append(Country(name:"Argentina", urlImage: "https://www.ambientum.com/wp-content/uploads/2019/01/bandera-australia-696x348.png", type: 1, cities: getDatosCities()))
        listCountry.append(Country(name:"Lima", urlImage: "https://st2.depositphotos.com/1482106/12306/i/950/depositphotos_123064476-stock-photo-waving-flag-of-lima-peru.jpg?forcejpeg=true", type: 2, cities: []))
        
       return listCountry
    }
    
    func getDatosCities() -> [Cities] {
        var listCity = [Cities]()
        listCity.append(Cities(name: "Claro", urlImage: "avatar1", type: 1))
        listCity.append(Cities(name: "Claro", urlImage: "avatar1", type: 1))
        listCity.append(Cities(name: "Jumanji", urlImage: "avatar1", type: 1))
        listCity.append(Cities(name: "Claro", urlImage: "avatar1", type: 1))
        listCity.append(Cities(name: "Claro", urlImage: "avatar1", type: 1))
        listCity.append(Cities(name: "Claro", urlImage: "avatar1", type: 1))
        listCity.append(Cities(name: "Claro", urlImage: "avatar1", type: 1))
        listCity.append(Cities(name: "Claro", urlImage: "avatar1", type: 1))
        
        return listCity
    }
    func getDatosCities2() -> [Cities] {
        var listCity = [Cities]()
        listCity.append(Cities(name: "Claro", urlImage: "avatar1", type: 1))
        listCity.append(Cities(name: "Claro", urlImage: "avatar1", type: 1))
        listCity.append(Cities(name: "Jumanji", urlImage: "avatar1", type: 1))
        listCity.append(Cities(name: "Claro", urlImage: "avatar1", type: 1))
        listCity.append(Cities(name: "Claro", urlImage: "avatar1", type: 1))
        listCity.append(Cities(name: "Claro", urlImage: "avatar1", type: 1))
        listCity.append(Cities(name: "Claro", urlImage: "avatar1", type: 1))
        listCity.append(Cities(name: "Claro", urlImage: "avatar1", type: 1))
        
        return listCity
    }
    func getDatosCities3() -> [Cities] {
        var listCity = [Cities]()
        listCity.append(Cities(name: "Claro", urlImage: "avatar1", type: 1))
        listCity.append(Cities(name: "Claro", urlImage: "avatar1", type: 1))
        listCity.append(Cities(name: "Jumanji", urlImage: "avatar1", type: 1))
        listCity.append(Cities(name: "Claro", urlImage: "avatar1", type: 1))
        listCity.append(Cities(name: "Claro", urlImage: "avatar1", type: 1))
        listCity.append(Cities(name: "Claro", urlImage: "avatar1", type: 1))
        listCity.append(Cities(name: "Claro", urlImage: "avatar1", type: 1))
        listCity.append(Cities(name: "Claro", urlImage: "avatar1", type: 1))
        
        return listCity
    }
}
