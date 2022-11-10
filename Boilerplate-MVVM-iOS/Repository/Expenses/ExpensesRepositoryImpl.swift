//
//  PersonRepositoryImpl.swift
//  Boilerplate-MVVM-iOS
//
//  Created by Igor Fastroni Correa on 18/10/22.
//

import Foundation
import RxSwift

class ExpensesRepositoryImpl : ExpensesRepository{
    
    private var apiService: APIService?
    private var expensesModel: ExpenseList?
    
    
    init(apiService: APIService){
        self.apiService = apiService
    }
    
    func getExpenses() -> Observable<[Expenses]> {
        
        return Observable.create { (observer)  in
            self.apiService?.fetchExpenses(completion: { (expenses, error) in
            
                guard let _expenses = expenses?.expenses else{
                    return observer.onError(NSError(domain: "Error", code: -1))
                }
                observer.onNext(_expenses)
            })
            return Disposables.create()
        }
        
    }
    
}
