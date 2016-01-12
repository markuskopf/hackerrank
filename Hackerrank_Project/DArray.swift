//
//  2DArray.swift
//  Hackerrank_Project
//
//  Created by Markus Kopf on 11/01/16.
//  Copyright © 2016 markuskopf. All rights reserved.
//

import Foundation


class DArray {
    
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
        var array = Array<Array<Int>>()
        
        for _ in 0...5 {
            let lineArray = readLnArrayInt()
                array.append(lineArray)
        }
        
        print("break")
    }
    
}