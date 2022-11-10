//
//  ExpensesTableViewVC.swift
//  Boilerplate-MVVM-iOS
//
//  Created by Igor Fastroni Correa on 06/11/22.
//

import UIKit
import RxCocoa
import RxSwift

class ExpensesTableViewVC: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    private let disposeBag = DisposeBag()
    
    public var expenses = PublishSubject<[Expenses]>()
    
    override func viewDidLoad() {
        setupBiding()
    }
    
    private func setupBiding(){
        
        tableView.register(UINib(nibName: "ExpensesTableViewCell", bundle: nil), forCellReuseIdentifier: String(describing: ExpensesTableViewCell.self))
        
        expenses.bind(to: tableView.rx.items(cellIdentifier: "ExpensesTableViewCell", cellType: ExpensesTableViewCell.self)){ (row, expense, cell) in
            cell.expensesCell = expense
        }.disposed(by: disposeBag)
        
        
    }

}
