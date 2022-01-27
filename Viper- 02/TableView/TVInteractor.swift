//
//  TVInteractor.swift
//  Viper- 02
//
//  Created by David Viloria Ortega on 16/12/21.
//

import Foundation

extension TVInteractor: TVInteractorProtocol {
    func getApps() -> [Apps] {
        return getDatosApps()
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
    
    
    func getDatosApps() -> [Apps] {
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
        var listMiniApps = [MiniApps]()
        listMiniApps.append(MiniApps(name: "Claro", urlImage: "0.png", type: 1, isNew: false, color: 0))
        listMiniApps.append(MiniApps(name: "Claro", urlImage: "avatar1.png", type: 1, isNew: false, color: 0))
        listMiniApps.append(MiniApps(name: "Claro", urlImage: "avatar1.png", type: 1, isNew: false, color: 0))
        listMiniApps.append(MiniApps(name: "Claro", urlImage: "avatar1", type: 1, isNew: false, color: 0))
        listMiniApps.append(MiniApps(name: "Claro", urlImage: "avatar1", type: 1, isNew: true, color: 0))
        listMiniApps.append(MiniApps(name: "Claro", urlImage: "avatar1", type: 1, isNew: false, color: 0))
        listMiniApps.append(MiniApps(name: "Claro", urlImage: "avatar1", type: 1, isNew: true, color: 1))
        listMiniApps.append(MiniApps(name: "Claro", urlImage: "avatar1", type: 1, isNew: false, color: 0))
        listMiniApps.append(MiniApps(name: "Claro", urlImage: "avatar1", type: 1, isNew: false, color: 0))

        return listMiniApps
    }
    
    func getDatosAR() -> [Shortcuts]{
        var listShorcuts = [Shortcuts]()
        listShorcuts.append(Shortcuts(name: "Musica", urlImage: "0", type: 1, isNew: false, color: 0))
        listShorcuts.append(Shortcuts(name: "Noticias", urlImage: "0", type: 1, isNew: false, color: 0))
        listShorcuts.append(Shortcuts(name: "¿Que es Claro Pay ", urlImage: "0", type: 1, isNew: false, color: 0))
        listShorcuts.append(Shortcuts(name: "Telmex", urlImage: "0", type: 1, isNew: false, color: 0))
        listShorcuts.append(Shortcuts(name: "Telcel", urlImage: "0", type: 1, isNew: true, color: 1))
        listShorcuts.append(Shortcuts(name: "Cerca de mi", urlImage: "0", type: 1, isNew: false, color: 0))
        listShorcuts.append(Shortcuts(name: "Prepago", urlImage: "0", type: 1, isNew: false, color: 0))
        listShorcuts.append(Shortcuts(name: "Saldo", urlImage: "https://www.ambientum.com/wp-content/uploads/2019/01/bandera-australia-696x348.png", type: 1, isNew: false, color: 0))
        listShorcuts.append(Shortcuts(name: "Promos", urlImage: "0", type: 1, isNew: false, color: 0))
        listShorcuts.append(Shortcuts(name: "Prestamo", urlImage: "0", type: 1, isNew: true, color: 0))
        listShorcuts.append(Shortcuts(name: "Expedia", urlImage: "2", type: 1, isNew: false, color: 0))
        listShorcuts.append(Shortcuts(name: "Pase", urlImage: "1", type: 1, isNew: false, color: 0))
        
        return listShorcuts
    }
}
