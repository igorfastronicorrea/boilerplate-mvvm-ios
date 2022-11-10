//
//  PersonViewModel.swift
//  Boilerplate-MVVM-iOS
//
//  Created by Igor Fastroni Correa on 18/10/22.
//

import Foundation
import RxSwift
import RxCocoa

class ExpensesViewModel{
    
    private let disposeBag: DisposeBag = DisposeBag()
    
    private final let expensesRepository: ExpensesRepository
    
    let expenses: PublishSubject<[Expenses]> = .init()
    public let ex = PublishSubject<String>()
    public let test = PublishSubject<String>()
    
    init(expensesRepository: ExpensesRepository){
        self.expensesRepository = expensesRepository
    }
    
    func getExpenses(){
        
        expensesRepository.getExpenses()
            .subscribe(onNext: { element in
                self.expenses.onNext(element)
            }, onError: { error in
                print("error")
            })
            .disposed(by: disposeBag)
        
    }
    
}
