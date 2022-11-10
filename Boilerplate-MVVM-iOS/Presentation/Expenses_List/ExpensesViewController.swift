//
//  ViewController.swift
//  Boilerplate-MVVM-iOS
//
//  Created by Igor Fastroni Correa on 18/10/22.
//

import UIKit
import RxSwift
import RxCocoa

class ExpensesViewController: UIViewController {
   
    private let disposeBag: DisposeBag = DisposeBag()
    var expensesRepository = ExpensesRepository.self
    var expensesViewModel: ExpensesViewModel!
    let expensesToTableView = PublishSubject<[Expenses]>()
    
    @IBOutlet weak var expenseView: UIView!
    
    @IBAction func testDetail(_ sender: Any) {
        let detailVC = storyboard?.instantiateViewController(withIdentifier: "expenseDetailVC") as! ExpenseDetailViewController
        self.present(detailVC, animated: true)
    }
    
    private lazy var expenseViewController: ExpensesTableViewVC = {
        // Load Storyboard
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        
        // Instantiate View Controller
        var viewController = storyboard.instantiateViewController(withIdentifier: "ExpensesTableViewVC") as! ExpensesTableViewVC
        
        // Add View Controller as Child View Controller
        self.add(asChildViewController: viewController, to: expenseView)
        
        return viewController
    }()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        expensesViewModel = container.resolve(ExpensesViewModel.self)!
        setupBind()
        expensesViewModel.getExpenses()
        
    }
    
    func setupBind(){
        
        /*expensesViewModel
            .expenses
            .observe(on: MainScheduler.instance)
            .subscribe(onNext: { (expenses) in
                self.showExpensesList(expenses: expenses)
            })
            .disposed(by: disposeBag)*/
        
        expensesViewModel
            .expenses
            .observe(on: MainScheduler.instance)
            .bind(to: expenseViewController.expenses)
            .disposed(by: disposeBag)
    }
    
    func showExpensesList(expenses : [Expenses]){
        print(expenses[1].name)
    }

}

