//
//  Model.swift
//  MVVMExample
//
//  Created by Angelos Staboulis on 25/5/22.
//

import Foundation
struct Model:Codable{
    var name:String
    var gender:String
    var probability:Float
    var count:Int
    enum CodkingKeys:String,CodingKey{
        case name
        case gender
        case probability
        case count
    }
    init(name:String,gender:String,probability:Float,count:Int){
        self.name = name
        self.gender = gender
        self.probability = probability
        self.count = count
    }
}
