//
//  ContentView.swift
//  ExpensesR
//
//  Created by user232479 on 3/5/23.
//

import SwiftUI
import FirebaseDatabase
import FirebaseDatabaseSwift

struct ContentView: View {
    let dataWriter = DataWriter()
    let dataReader = DataLoader()
    @State var expenses = [Expense]()
    

var body: some View {
        Button("test"){
            var newExpense: Expense = Expense()
            var newExpense1: Expense = Expense()
            expenses.append(newExpense)
            expenses.append(newExpense1)
            expenses[1].id = 1
            dataWriter.pushArray(expenses: expenses)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
