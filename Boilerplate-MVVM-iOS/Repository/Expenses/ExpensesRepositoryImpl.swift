//
//  PersonRepositoryImpl.swift
//  Boilerplate-MVVM-iOS
//
//  Created by Igor Fastroni Correa on 18/10/22.
//

import Foundation
import RxSwift

class ExpensesRepositoryImpl : ExpensesRepository{
    
    func getExpenses() -> Observable<Expenses> {
        let expensesFake = Expenses(id: "10", name: "Jáu Serve", date: "21-10-2022", price: 20.9)
        return Observable.just(expensesFake)
    }
    
    
}
