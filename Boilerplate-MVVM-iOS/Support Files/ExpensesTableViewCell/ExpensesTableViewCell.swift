//
//  ExpensesCell.swift
//  Boilerplate-MVVM-iOS
//
//  Created by Igor Fastroni Correa on 02/11/22.
//

import UIKit

class ExpensesTableViewCell: UITableViewCell{
    
    @IBOutlet weak var title: UILabel!
    
    public var expensesCell : Expenses! {
        didSet{
            self.title.text = expensesCell.name
        }
    }
    
   
}
