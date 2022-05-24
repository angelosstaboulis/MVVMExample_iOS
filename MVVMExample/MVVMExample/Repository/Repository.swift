//
//  Repository.swift
//  MVVMExample
//
//  Created by Angelos Staboulis on 25/5/22.
//

import Foundation
import Alamofire
import SwiftyJSON
class Repository{
    static let shared = Repository()
    private init(){}
    func fetchGender(name:String,completion:@escaping (Model)->()){
        let urlGender = URL(string: "https://api.genderize.io/?name="+name)
        let requestGender = URLRequest(url: urlGender!)
        AF.request(requestGender).responseData { dataResponse in
            switch (dataResponse.result){
            case .success(_):
                do{
                    let decode = try JSONDecoder().decode(Model.self, from: dataResponse.data!)
                    completion(decode)
                }
                catch{
                    debugPrint(("something went wrong"))
                }
            case .failure(let error):
                debugPrint("something went wrong=",error.localizedDescription)
                
                
            }
        }
    }
}
