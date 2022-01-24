//
//  ModelCountry.swift
//  Viper- 02
//
//  Created by Miguel Angel Requena on 23-12-21.
//

import Foundation

public struct Apps {

    public var name: String
    public var urlImage: String
    public var type: Int = 0
    public var miniApps: [MiniApps]
    public var shortcuts: [Shortcuts]
    
    init(name: String, urlImage: String, type: Int, miniApps: [MiniApps], shortcuts: [Shortcuts]){
        self.name = name
        self.urlImage = urlImage
        self.type = type
        self.miniApps = miniApps
        self.shortcuts = shortcuts
    }
}

public struct MiniApps{
    public var name: String
    public var urlImage: String
    public var type: Int = 0
    
    init(name: String, urlImage: String, type: Int) {
        self.name  = name
        self.urlImage = urlImage
        self.type = type
    }
}

public struct Shortcuts{
    public var name: String
    public var urlImage: String
    public var type: Int = 0
    
    init(name: String, urlImage: String, type: Int) {
        self.name  = name
        self.urlImage = urlImage
        self.type = type
    }
}
