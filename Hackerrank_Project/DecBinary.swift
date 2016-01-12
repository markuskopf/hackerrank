//
//  DecBinary.swift
//  Hackerrank_Project
//
//  Created by Markus Kopf on 11/01/16.
//  Copyright © 2016 markuskopf. All rights reserved.
//

import Foundation

class DecBinary {
    
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
    
    func start() {
        
        let N = readLnInt()
        
        for var i = 0; i<N; i++ {
            let decimal = readLnInt()
            let str = String(decimal, radix: 2)
            print(str)
        }
    }
}
