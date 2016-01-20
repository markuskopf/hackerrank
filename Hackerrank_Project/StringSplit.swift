//
//  StringSplit.swift
//  Hackerrank_Project
//
//  Created by Markus Kopf on 20/01/16.
//  Copyright © 2016 markuskopf. All rights reserved.
//

import Foundation

class StringSplit {
    
    func getLine() -> String{
        var buf = String()
        var c = getchar()
        while c != EOF && c != 10 {
            buf.append(UnicodeScalar(UInt32(c)))
            c = getchar()
        }
        
        return buf
    }
    
   
    func start() {
        
        let input = getLine()
        
        let separators = NSCharacterSet(charactersInString: " ![,?.\\_'@+]")
        let wordArray = input.componentsSeparatedByCharactersInSet(separators)
        var processingArray = Array<String>()

        for value in wordArray {
            if value != "" {
                processingArray.append(value)
            }
        }

        print("\(processingArray.count)")

        for element in processingArray {
            print("\(element)")
        }
    }
    
}
