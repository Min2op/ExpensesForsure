//
//  Expense.swift
//  ExpensesR
//
//  Created by user232479 on 3/5/23.
//

import Foundation
import SwiftUI

class Expense: ObservableObject, Encodable{
    //private let dataLoader = DataLoader()
    //private let dataWriter = DataWriter()
    
    enum CodingKeys: CodingKey{
        case id
        case expenseName
        case expenseDescription
        case expensePrice
        case isExpensePaid
        case dateAdded
        case dateOfRecipt
        case dateOfPayment
        case isVAT
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decode(Int.self, forKey: .id)
        expenseName = try container.decode(String.self, forKey: .expenseName)
        expenseDescription = try container.decode(String.self, forKey: .expenseDescription)
        isExpensePaid = try container.decode(Bool.self, forKey: .isExpensePaid)
        dateAdded = try container.decode(String.self, forKey: .dateAdded)
        dateOfRecipt = try container.decode(String.self, forKey: .dateOfRecipt)
        dateOfPayment = try container.decode(String.self, forKey: .dateOfPayment)
        isVat = try container.decode(Bool.self, forKey: .isVAT)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(expenseName, forKey: .expenseName)
        try container.encode(expenseDescription, forKey: .expenseDescription)
        try container.encode(isExpensePaid, forKey: .isExpensePaid)
        try container.encode(dateAdded, forKey: .dateAdded)
        try container.encode(dateOfRecipt, forKey: .dateOfRecipt)
        try container.encode(dateOfPayment, forKey: .dateOfPayment)
        try container.encode(isVat, forKey: .isVAT)
    }
    init(){
        id = 0
        expenseName = "test"
        expenseDescription = "test"
        isExpensePaid = false
        dateAdded = "0000"
        dateOfRecipt = "0000"
        dateOfPayment = "0000"
        isVat = false	
    }
    
    @Published var id: Int = 0
    @Published var expenseName: String = ""
    @Published var expenseDescription: String = ""
    @Published var isExpensePaid: Bool = false
    @Published var dateAdded: String = ""
    @Published var dateOfRecipt: String = ""
    @Published var dateOfPayment: String = ""
    @Published var isVat: Bool = false
    
}

extension Encodable{
    var toDict: [String: Any]?{
        guard let data = try? JSONEncoder().encode(self) else{
            return nil
        }
        return try? JSONSerialization.jsonObject(with: data, options: .allowFragments) as? [String: Any]
    }
}
