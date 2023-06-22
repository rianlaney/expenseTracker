//
//  ExpenseHelper.swift
//  DMExpenseTrackerBasic
//
//  Created by David Ruvinskiy on 3/27/23.
//

import Foundation

class ExpenseHelper {
    
    /**
     4.2 Create a static function called `calculateTotalSpent` that accepts an array of `Expense` and returns the total amount of money the user spent. Feel free to run the provided test to know if your code is correct.
     */
    
    // when to use static vs regular functions, rule of thumb for filter,map,reduce, forEach
    static func calculateTotalSpent(expenses: [Expense] ) -> Double{
        var total = 0.0
        for expense in expenses {
            total += expense.amount
        }
        return total
    }
    
    /**
     4.2 Create a static function called `getExpensesByCategory` that accepts an array of `Expense` and returns a dictionary where each key is a category and each value is an array of `Expense` belonging to that category. Feel free to run the provided test to know if your code is correct.
     */
    static func getExpensesByCategory(expenses: [Expense]) -> Dictionary<String, [Expense]>{
        var expensesByCategory = [String: [Expense]]()
        
        for expense in expenses{
            //We've seen this category before. Add the expense to the existing array.
            if(expensesByCategory.keys.contains(expense.category)){
                expensesByCategory[expense.category]?.append(expense)
                //This is the first time we're seeing this category. Create a new array, add the expense to the array, and add the array to the dictionary.
            } else {
                var newCategory = [expense]
                expensesByCategory[expense.category] = newCategory
                
            }
            
        }
        return expensesByCategory
    }
    
}
