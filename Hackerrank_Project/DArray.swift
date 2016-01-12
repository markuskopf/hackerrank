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
        
        for i in 0...5 {
            let lineArray = readLnArrayInt()
            array.insert(lineArray, atIndex:i)
        }
        
        // two loops and field access + counting
        var score = 0
        
        for var i = 0; i < 4; i++  {
            for var j = 0; j < 4; j++ {
                let a = array[i][j];
                let b = array[i][j+1];
                let c = array[i][j+2]
                let d = array[i+1][j+1]
                let e = array[i+2][j]
                let f = array[i+2][j+1]
                let g = array[i+2][j+2]

                let sum = a+b+c+d+e+f+g
                
                if  i == 0 && j == 0 {
                    score = sum
                }
                
                if sum > score {
                    score = sum
                }
            }
        }
        
        print("\(score)")
    }
}