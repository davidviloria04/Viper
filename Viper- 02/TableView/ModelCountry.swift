//
//  ModelCountry.swift
//  Viper- 02
//
//  Created by Miguel Angel Requena on 23-12-21.
//

import Foundation

public struct Apps{
    public var type: Int = 0
    public var miniApps: [MiniApps]
    public var shortcuts: [Shortcuts]
    
    init(type: Int, miniApps: [MiniApps], shortcuts: [Shortcuts]){
        self.type = type
        self.miniApps = miniApps
        self.shortcuts = shortcuts
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


//Consumir servicio de Home
//Cuando se esta pintando cada opcion pintar cada numero
//Banner
//Listo
