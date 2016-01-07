//
//  Recursion.swift
//  Hackerrank_Project
//
//  Created by Markus Kopf on 07/01/16.
//  Copyright © 2016 markuskopf. All rights reserved.
//

import Foundation


class Recursion {
    
    
    func getLine() -> String{
        var buf = String()
        var c = getchar()
        while c != EOF && c != 10 {
            buf.append(UnicodeScalar(UInt32(c)))
            c = getchar()
        }
        return buf
    }
    
    func readLnInt() -> Int {
        return Int(getLine())!
    }
    
    func recursion(depth: Int, recStep: Int) {
        var tmp = depth
        var tmpRecSteo = recStep
        
        if tmp == 0 {
            return
        }
        
        recursion(--tmp, recStep:++tmpRecSteo)
        var printString: String = ""
        
        for index in 0...recStep {
            if index == 0 {
                continue
            } else {
                printString = "\(printString) "
            }
        }
        
        for _ in 0...tmp {
            printString = "\(printString)#"
        }
        
        print(printString)
    }
    
    func setup(depth: Int) {
        
        recursion(depth, recStep:0)
        
    }
    
    func start() {
        setup(readLnInt())
    }
    
}