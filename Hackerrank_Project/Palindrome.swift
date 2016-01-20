//
//  QueuesStacks.swift
//  Hackerrank_Project
//
//  Created by Markus Kopf on 19/01/16.
//  Copyright © 2016 markuskopf. All rights reserved.
//

import Foundation

class Palinedrome {
    
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
        
        let word = getLine()
        
        var isPalinedrom: Bool = true
        let queue = Queue<Character>()
        let stack = Stack<Character>()
        
        for character in word.characters {
            queue.enQueue(character)
            stack.push(character)
        }
        
        
        for _ in 1...word.characters.count {
            if stack.pop() != queue.deQueue() {
                isPalinedrom = false
                break
            }
        }
        

        if isPalinedrom {
            print("The word, \(word), is a palindrome.")
        } else {
            print("The word, \(word), is not a palindrome.")
        }
        
        
    }
}