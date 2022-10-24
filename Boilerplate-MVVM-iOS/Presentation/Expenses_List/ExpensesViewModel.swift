//
//  PersonViewModel.swift
//  Boilerplate-MVVM-iOS
//
//  Created by Igor Fastroni Correa on 18/10/22.
//

import Foundation
import RxSwift

final class ExpensesViewModel{
    
    private let disposeBag: DisposeBag = DisposeBag()
    
    private final let expensesRepository: ExpensesRepository
    
    public let expenses: PublishSubject<Expenses> = .init()
    
    init(expnesesRepository: ExpensesRepository){
        self.expensesRepository = expnesesRepository
    }
    
    func getExpenses(){
        expensesRepository.getExpenses()
            .subscribe(onNext: {_ in
                print("success")
            }, onError: {_ in
                print("error")
            }
            ).disposed(by: disposeBag)
    }
}
