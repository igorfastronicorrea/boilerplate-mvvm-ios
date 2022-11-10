//
//  ExpensesListTableView.swift
//  Boilerplate-MVVM-iOS
//
//  Created by Igor Fastroni Correa on 02/11/22.
//

import SwiftUI

struct ExpensesRow: View {
    var expense : Expenses
    var body: some View{
            HStack{
                Text(expense.name)
                Spacer()
            }
    }
}

/*struct ExpensesListTableView_Previews: PreviewProvider {
    static var previews: some View {
        ExpensesListTableView(expenses: ex)
    }
}*/
