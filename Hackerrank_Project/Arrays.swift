//
//  Arrays.swift
//  Hackerrank_Project
//
//  Created by Markus Kopf on 07/01/16.
//  Copyright © 2016 markuskopf. All rights reserved.
//

import Foundation

class Arrays {
 
    func readIn() -> String {
        var buf = String()
        var c = getchar()
        
        while c != EOF && c != 10 {
            buf.append(UnicodeScalar(UInt32(c)))
            c = getchar()
        }
    
        return buf
    }
    
    func readLnInt() -> Int {
        return Int(readIn())!
    }
    
    func readLnString() -> [String] {
        return readIn().componentsSeparatedByCharactersInSet(NSCharacterSet.whitespaceCharacterSet())
    }
    
    func readLnArrayInt() -> [Int] {
        let words: [String] = readLnString()
        return words.map { Int($0)! }
    }
    
    func start() {
        let sizeOfArray = readLnInt()
        let inputArray = readLnArrayInt()
        
        for var index = sizeOfArray-1; index>=0; index-- {
            print(inputArray[index], terminator: " ")
        }
    }
}
