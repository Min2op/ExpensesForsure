//
//  AddExpense.swift
//  ExpensesR
//
//  Created by user232479 on 3/5/23.
//

import SwiftUI

struct AddExpense: View {
    @StateObject var expense: Expense = Expense()
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct AddExpense_Previews: PreviewProvider {
    static var previews: some View {
        AddExpense()
    }
}
