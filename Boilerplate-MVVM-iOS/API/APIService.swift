//
//  APIService.swift
//  Boilerplate-MVVM-iOS
//
//  Created by Igor Fastroni Correa on 08/11/22.
//

import Foundation
import Alamofire

struct APIService {
    
    static let shared = APIService()
    
    let url = "http://demo1201562.mockable.io/expenses"
   
    
    func fetchExpenses(completion: @escaping (ExpenseList?, Error?) -> ()){
        AF.request(url).responseDecodable{ (response: DataResponse<ExpenseList, AFError>) in
            switch response.result{
            case .success:
                completion(response.value, nil)
            case .failure:
                completion(nil, response.error)
            }
            
        }
    }
}
