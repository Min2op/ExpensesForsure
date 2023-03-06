//
//  DataLoader.swift
//  ExpensesR
//
//  Created by user232479 on 3/5/23.
//

import Foundation
import FirebaseDatabase
import FirebaseDatabaseSwift

class DataLoader{
    private let ref: DatabaseReference
    var expensesLoaded: [Expense]
    
    init(){
        self.expensesLoaded = []
        self.ref = Database.database().reference()
    }
    
    func getData(){
        ref.setValue("Hello there")
    }
    func loadExpense() -> [Expense]{
        return expensesLoaded
    }
}
