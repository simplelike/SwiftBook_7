//
//  Model.swift
//  SwiftBook_7
//
//  Created by Andrey Borovilov on 19/02/2020.
//  Copyright © 2020 Andrey Borovilov. All rights reserved.
//

import Foundation

struct Contact {
    var name: String
    var number: String
    var email: String
    
    static var contactList: [Contact] = []
}

extension Contact {
    
    static func getContactList()->[Contact] {
        if Contact.contactList.isEmpty {
        
            let names: [String] = [ "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O" ]
            let numbers: [String] = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15"]
            let emails: [String] = ["1@1.ru","2@2.ru","3@3.ru","4@4.ru","5@5.ru","6@6.ru","7@7.ru","8@8.ru","9@9.ru","10@10.ru","11@11.ru","12@12.ru","13@13.ru","14@14.ru","15@15.ru"]
            
            var returnValue: [Contact] = []
            
            var nums: [Int] = []
            for i in 0...min(names.count-1, numbers.count-1, emails.count-1) {
                nums.append(i)
            }
            
            func getRandomNumberFromArray (array: [Int], arrayLength: Int) -> [Int] {
                if arrayLength == 0 {
                    return []
                }
                
                var arr = array
                let i = Int.random(in: 0...arr.count-1)
                let next = array[i]
                arr.remove(at: i)

                var rest = getRandomNumberFromArray(array: arr, arrayLength: arrayLength-1)
                rest.append(next)
                return rest
            }
            let indexes = getRandomNumberFromArray(array: nums, arrayLength: 10)
            
            for i in 0...indexes.count-1 {
                returnValue.append(Contact(name: names[indexes[i]], number: numbers[indexes[i]], email: emails[indexes[i]]))
            }
            Contact.contactList = returnValue
        }
        return Contact.contactList
    }
}
