//
//  ViewModel.swift
//  MVVMExample
//
//  Created by Angelos Staboulis on 25/5/22.
//

import Foundation
protocol TableDelegate:AnyObject{
    func updateData()
}
class ViewModel{
    weak var delegate:TableDelegate?
    var apishared:Repository
    var genderModel = Model(name: "", gender: "", probability: 0.0, count: 0)
    init(){
        apishared = Repository.shared
    }
    func fetchGender(name:String){
        apishared.fetchGender(name: name) { model in
            self.delegate?.updateData()
            self.genderModel = model

        }
    }
}
