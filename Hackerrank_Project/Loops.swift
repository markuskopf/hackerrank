//
//  Loops.swift
//  Hackerrank_Project
//
//  Created by Markus Kopf on 06/01/16.
//  Copyright © 2016 markuskopf. All rights reserved.
//

import Foundation


class Loops {
    
    func getLine() -> String {
        var buf = String()
        var c = getchar()
        // 10 is ascii code for newline
        while c != EOF && c != 10 {
            buf.append(UnicodeScalar(UInt32(c)))
            c = getchar()
        }
        return buf
    }
    
    func readLnInt() -> Int {
        return Int(getLine())!
    }
    
    func readLnString() -> [String] {
        return getLine().componentsSeparatedByCharactersInSet(NSCharacterSet.whitespaceCharacterSet())
    }
    
    func readLnArrayInt() -> [Int] {
        let words: [String] = readLnString()
        return words.map { Int($0)! }
    }
    
    
    func calcPower(base: Int, power: Int) -> Int {
        var tmp = 1
        
        if power == 0 {
            return 1
        }
        
        for _ in 1...power {
            tmp *= base
        }
        
        return tmp
    }
    

    func start() {
        let test :Int = readLnInt()
        
        for _ in 1...test {
            let numbers: [Int] = readLnArrayInt()
            let a = numbers[0]
            let b = numbers[1]
            let N = numbers[2]
            
            var resultString :String = ""
            
            for var index = 0; index <= N-1; ++index {
                
                var term :Double = Double(a);
                var counter :Int = index;
                while counter>=0 {
                    term += pow(Double(2), Double(counter)) * Double(b);
                    counter--;
                }
                
                resultString = "\(resultString)\(Int(term)) "
            }
            
            resultString = resultString.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())
            
            print("\(resultString)")
        }
        
    }
}