//
//  InheritanceStarter.swift
//  Hackerrank_Project
//
//  Created by Markus Kopf on 12/01/16.
//  Copyright © 2016 markuskopf. All rights reserved.
//

import Foundation

class InheritanceStarter {
    
    func getLine() -> String{
        var buf = String()
        var c = getchar()
        while c != EOF && c != 10 {
            buf.append(UnicodeScalar(UInt32(c)))
            c = getchar()
        }
        
        return buf
    }
    
    func readLnString() -> [String] {
        return getLine().componentsSeparatedByCharactersInSet(NSCharacterSet.whitespaceCharacterSet())
    }
    
    func readLnArrayInt() -> [Int] {
        let words: [String] = readLnString()
        return words.map { Int($0)! }
    }
    
    func readLnInt() -> Int {
        return Int(getLine())!
    }

    func start() {
        let firstName = getLine()
        let lastName = getLine()
        let phoneNumber = readLnInt()
        let score = readLnInt()
        
        let stu: Student = Grade(pFirstName: firstName, pLastName: lastName, pPhoneNumber: phoneNumber, pScore: score)
        stu.display()
        
        if let grade = stu as? Grade {
            print("Grade: \(grade.calculate())")
        }
        
    }
    
}