//
//  DictsAndMaps.swift
//  Hackerrank_Project
//
//  Created by Markus Kopf on 10/01/16.
//  Copyright © 2016 markuskopf. All rights reserved.
//

import Foundation


class DictsAndMaps {
    
    func getLine() -> String {
        
        var buffer = String()
        var c = getchar()
        
        while c != EOF && c != 10 {
            buffer.append(UnicodeScalar(UInt32(c)))
            c = getchar()
        }
        
        return buffer
    }
    
    func readInt() -> Int? {
        return Int(getLine())
    }
    
    func readLnString() -> [String] {
        return getLine().componentsSeparatedByCharactersInSet(NSCharacterSet.whitespaceCharacterSet())
    }
    
    func readLnArrayInt() -> [Int] {
        let words: [String] = readLnString()
        return words.map { Int($0)! }
    }
    
    
    func start() {
        var phoneBook = [String: Int]()
        // read in the iteration
        let N = readInt()
        
        for var i = 1; i <= N; i++ {
            
            // read name
            let name = readLine()
            
            // read number
            let number = readInt()
            
            if let key = name {
                if let value = number {
                    phoneBook.updateValue(value, forKey: key)
                }
            }
        }
        
        for var i = 1; i <= N; i++ {
            
            var query = String()
            var c = getchar()
            
            while c != EOF && c != 10 {
                query.append(UnicodeScalar(UInt32(c)))
                c = getchar()
            }
            
            if let entryValue = phoneBook[query] {
                print("\(query)=\(String(entryValue))")
            } else {
                print("Not found")
            }
        }
    }
}