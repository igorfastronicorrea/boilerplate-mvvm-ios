//
//  Person.swift
//  Boilerplate-MVVM-iOS
//
//  Created by Igor Fastroni Correa on 18/10/22.
//

import Foundation


struct Expenses: Codable{
    
    var id, name, date: String
    var price: Double
    
    
    enum CodingKeys: String, CodingKey{
        case id, name, date, price
    }
}
