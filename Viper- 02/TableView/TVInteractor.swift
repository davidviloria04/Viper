//
//  TVInteractor.swift
//  Viper- 02
//
//  Created by David Viloria Ortega on 16/12/21.
//

import Foundation

extension TVInteractor: TVInteractorProtocol {

    func getCellTypes() -> [CellType] {
        return getCellType()
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
//
//    func getDatosString() -> String {
//       return "Me llamo Val"
//    }
//
//    func getDatosCity() -> [String] {
//        let myCities = ["Madrid", "Ciudad de mexico", "Lima", "Bogota", "Buenos aires", "Washingtong", "Paris", "Roma"]
//        return myCities
//    }
    
    
    func getCellType() -> [CellType] {
        var cellType = [CellType]()
        
        cellType.append(CellType(type: 3, miniApps: [], shortcuts: [], banners: nil))
        cellType.append(CellType(type: 4, miniApps: [], shortcuts: [], banners: nil ))
        cellType.append(CellType(type: 1, miniApps: getDatosMiniApps(), shortcuts: [], banners: nil))
        cellType.append(CellType(type: 5, miniApps: [], shortcuts: [], banners: getDatosBanners()))
        cellType.append(CellType(type: 4, miniApps: [], shortcuts: [], banners: nil))
        cellType.append(CellType(type: 2, miniApps: getDatosMiniApps(), shortcuts: getDatosAR(), banners: nil))
        
       return cellType
    }
    
    func getDatosMiniApps() -> [MiniApps] {
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
        listShorcuts.append(Shortcuts(name: "¿Que es Claro Pay?", urlImage: "0", type: 1, isNew: false, color: 0))
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
    func getDatosBanners() -> Banners {
        var banners : Banners
        banners = Banners(name: "", urlImage:  "https://64.media.tumblr.com/03bbd57b1d9f769d0abdee96032ec7e0/cf24ba563b007d14-d1/s2048x3072/b9d327e7d0a958c48e847b8237dce17d78a30700.jpg", type: 1)
        return banners
    }
    
}
