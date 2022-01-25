//
//  TVInteractor.swift
//  Viper- 02
//
//  Created by David Viloria Ortega on 16/12/21.
//

import Foundation

extension TVInteractor: TVInteractorProtocol {
    func getCountries() -> [Apps] {
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
    
    
    func getDatosCountry() -> [Apps] {
        var listCountry = [Apps]()
        
        listCountry.append(Apps(name:"" , urlImage: "0.png", type: 3, miniApps: [], shortcuts: []))
        listCountry.append(Apps(name:"" , urlImage: "0.png", type: 4, miniApps: [], shortcuts: []))
        listCountry.append(Apps(name:"", urlImage: "", type: 1, miniApps: getDatosCities(), shortcuts: []))
        listCountry.append(Apps(name:"", urlImage: "", type: 5, miniApps: [], shortcuts: []))
        listCountry.append(Apps(name:"", urlImage: "" , type: 4, miniApps: [], shortcuts: []))
        listCountry.append(Apps(name:"", urlImage: "", type: 2, miniApps: getDatosCities(), shortcuts: getDatosAR()))
        
       return listCountry
    }
    
    func getDatosCities() -> [MiniApps] {
        var listCity = [MiniApps]()
        listCity.append(MiniApps(name: "Claro", urlImage: "0.png", type: 1))
        listCity.append(MiniApps(name: "Claro", urlImage: "avatar1.png", type: 1))
        listCity.append(MiniApps(name: "Claro", urlImage: "avatar1.png", type: 1))
        listCity.append(MiniApps(name: "Claro", urlImage: "avatar1", type: 1))
        listCity.append(MiniApps(name: "Claro", urlImage: "avatar1", type: 1))
        listCity.append(MiniApps(name: "Claro", urlImage: "avatar1", type: 1))
        listCity.append(MiniApps(name: "Claro", urlImage: "avatar1", type: 1))
        listCity.append(MiniApps(name: "Claro", urlImage: "avatar1", type: 1))
        listCity.append(MiniApps(name: "Claro", urlImage: "avatar1", type: 1))

        return listCity
    }
    
    func getDatosAR() -> [Shortcuts]{
        var listAr = [Shortcuts]()
        listAr.append(Shortcuts(name: "Musica", urlImage: "0", type: 1))
        listAr.append(Shortcuts(name: "Noticias", urlImage: "0", type: 1))
        listAr.append(Shortcuts(name: "¿Que es Claro Pay ", urlImage: "0", type: 1))
        listAr.append(Shortcuts(name: "Telmex", urlImage: "0", type: 1))
        listAr.append(Shortcuts(name: "Telcel", urlImage: "0", type: 1))
        listAr.append(Shortcuts(name: "Cerca de mi", urlImage: "0", type: 1))
        listAr.append(Shortcuts(name: "Prepago", urlImage: "0", type: 1))
        listAr.append(Shortcuts(name: "Saldo", urlImage: "https://www.ambientum.com/wp-content/uploads/2019/01/bandera-australia-696x348.png", type: 1))
        listAr.append(Shortcuts(name: "Promos", urlImage: "0", type: 1))
        listAr.append(Shortcuts(name: "Prestamo", urlImage: "0", type: 1))
        listAr.append(Shortcuts(name: "Expedia", urlImage: "2", type: 1))
        listAr.append(Shortcuts(name: "Pase", urlImage: "1", type: 1))
        
        return listAr
    }
}
