//
//  Modulo.swift
//  Hackerrank_Project
//
//  Created by Markus Kopf on 04/01/16.
//  Copyright © 2016 markuskopf. All rights reserved.
//

import Foundation


class Modulo {
    
    func getLine() -> String  {
        var buf = String()
        var c = getchar()
        // 10 is ascii code for newline
        while c != EOF && c != 10 {
            buf.append(UnicodeScalar(UInt32(c)))
            c = getchar()
        }
        return buf
    }
    
    func readLnInt() -> Int? {
        return Int(getLine())
    }
    
    
    func enterInfo() {
        let input = readLnInt()
        if let a = input {
            if a%2 != 0 {
                print("Weird")
            } else if a%2==0 && a>=2 && a<=5 {
                print("Not Weird")
            } else if a%2==0 && a>=6 && a<=20 {
                print("Weird")
            } else if a%2==0 && a>20 {
                print("Not Weird")
            }
        }
    }
    
}