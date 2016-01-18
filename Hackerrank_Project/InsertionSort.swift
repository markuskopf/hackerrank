//
//  InsertionSort.swift
//  Hackerrank_Project
//
//  Created by Markus Kopf on 17/01/16.
//  Copyright © 2016 markuskopf. All rights reserved.
//

import Foundation

class InsertionSort {
    
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
    
    
    func sort(size: Int, var inputData: [Int]) {
        
        var minimalDiff: Int = 0;
        var elementsArray = [Int]()
        
        // sort on your own which is n2
//        for i in 1...size-1 {
//            var j = i
//        
//            while j>0 && inputData[j]<inputData[j-1] {
//                swap(&inputData[j], &inputData[j-1])
//                j--
//            }
//        }
        
        inputData.sortInPlace { (a, b) -> Bool in
            return a<b
        }
        
        for i in 1...size-1 {
            
            let tmpDiff = inputData[i] - inputData[i-1]
            
            if i==1 {
                minimalDiff = tmpDiff
            }
            
            if minimalDiff>tmpDiff || minimalDiff == tmpDiff {
                if minimalDiff == tmpDiff {
                    
                } else {
                    elementsArray.removeAll()
                }

                
                elementsArray.append(inputData[i-1])
                elementsArray.append(inputData[i])
                
                minimalDiff = tmpDiff
            }
        }

        var stringToPrint = ""
        
        for elementInArray in elementsArray {
            if stringToPrint.characters.count == 0 {
                stringToPrint = "\(elementInArray)"
            } else {
                stringToPrint = stringToPrint + " \(elementInArray)"
            }
        }
        
        print("\(stringToPrint)")
    }
    
    func start() {
        let N = readLnInt()
        let inputData = readLnArrayInt()
        
        sort(N, inputData: inputData)
    }
    
}
