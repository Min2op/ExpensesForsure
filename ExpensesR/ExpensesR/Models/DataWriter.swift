//
//  DataWriter.swift
//  ExpensesR
//
//  Created by user232479 on 3/5/23.
//

import Foundation
import FirebaseDatabase
import FirebaseDatabaseSwift

class DataWriter{
    private let ref = Database.database().reference()
    
    func pushData(expenses: Expense){
       ref.child(String(expenses.id)).setValue(expenses.toDict)
    }
    
    func pushArray(expenses: [Expense]){
        for l in expenses{
            print(l.id)
            ref.child(String(l.id)).setValue(l.toDict)
        }
        
    }
}
