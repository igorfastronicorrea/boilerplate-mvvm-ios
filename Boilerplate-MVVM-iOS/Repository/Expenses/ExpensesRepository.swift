//
//  PersonRepository.swift
//  Boilerplate-MVVM-iOS
//
//  Created by Igor Fastroni Correa on 18/10/22.
//

import Foundation
import RxSwift

protocol ExpensesRepository{
    func getExpenses() -> Observable<[Expenses]>
}
