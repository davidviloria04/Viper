//
//  ModelGeneral.swift
//  Viper- 02
//
//  Created by David Viloria Ortega on 14/02/22.
//

import Foundation


struct Home: Decodable{
    var type: String
    var order: Int
    var header: Header
    var btnConfig: BtnConfig
    var columns: Int
}

struct BtnConfig: Decodable{
    var title: String
    var textColor: String
    var visibility: Bool
}

struct Header: Decodable{
    var title: String
    var textColor: String
    var visibiliry: Bool
}
