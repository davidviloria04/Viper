//
//  ModelCountry.swift
//  Viper- 02
//
//  Created by Miguel Angel Requena on 23-12-21.
//

import Foundation

public struct Country {

    public var name: String
    public var urlImage: String
    public var type: Int = 0
    
    init(name: String, urlImage: String, type: Int){
        self.name = name
        self.urlImage = urlImage
        self.type = type
        
    }
}

public struct Cities{
    public var name: String
    public var urlImage: String
    
    init(name: String, urlImage: String) {
        self.name  = name
        self.urlImage = urlImage
    }
}
