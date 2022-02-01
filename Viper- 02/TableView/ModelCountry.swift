//
//  ModelCountry.swift
//  Viper- 02
//
//  Created by Miguel Angel Requena on 23-12-21.
//

import Foundation

public struct CellType{
    public var type: Int = 0
    public var miniApps: [MiniApps]
    public var shortcuts: [Shortcuts]
    public var banners: Banners
    
    init(type: Int, miniApps: [MiniApps], shortcuts: [Shortcuts], banners: Banners?){
        self.type = type
        self.miniApps = miniApps
        self.shortcuts = shortcuts
        self.banners = banners ?? Banners(name: "", urlImage: "https://www.ambientum.com/wp-content/uploads/2019/01/bandera-australia-696x348.png", type: 1)
    }
}

public struct MiniApps{
    
    public var name: String
    public var urlImage: String
    public var type: Int = 0
    public var isNew: Bool = false
    public var color: Int = 0
    
    init(name: String, urlImage: String, type: Int, isNew: Bool, color: Int) {
        self.name  = name
        self.urlImage = urlImage
        self.type = type
        self.isNew = isNew
        self.color = color
    }
}

public struct Shortcuts{
    
    public var name: String
    public var urlImage: String
    public var type: Int = 0
    public var isNew: Bool = false
    public var color: Int = 0
    init(name: String, urlImage: String, type: Int, isNew: Bool, color: Int) {
        self.name  = name
        self.urlImage = urlImage
        self.type = type
        self.isNew = isNew
        self.color = color
    }
}

public struct Banners{
    
    public var name: String
    public var urlImage: String
    public var type: Int = 0
    init(name: String, urlImage: String, type: Int) {
        self.name  = name
        self.urlImage = urlImage
        self.type = type
    }
}


//Consumir servicio de Home
//Cuando se esta pintando cada opcion pintar cada numero
//Banner
//Listo
