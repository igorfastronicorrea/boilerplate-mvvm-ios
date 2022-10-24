//
//  ViewController.swift
//  Boilerplate-MVVM-iOS
//
//  Created by Igor Fastroni Correa on 18/10/22.
//

import UIKit
import RxSwift

class ViewController: UIViewController {

    var expensesRepository = ExpensesRepository.self
    var expensesViewModel: ExpensesViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        expensesViewModel = container.resolve(ExpensesViewModel.self)!
        
        expensesViewModel.getExpenses()
    }


}

