//
//  Arithmetic.swift
//  STDReadInWriteOut
//
//  Created by Markus Kopf on 03/01/16.
//  Copyright © 2016 markuskopf. All rights reserved.
//

import Foundation

class Arithmetic {
    
    var originalPrice = 0.0
    var tip = 0
    var tax = 0
    
    func readIn() -> String {
        let keyboard = NSFileHandle.fileHandleWithStandardInput()
        let inputData = keyboard.availableData
        let inputString = NSString(data: inputData, encoding: NSUTF8StringEncoding)
        
        if let string = inputString {
            return string.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())
        } else {
            return "Invalid input"
        }
    }
    
    func writeToSTDOut(outputString: String) {
        let outputHandle = NSFileHandle.fileHandleWithStandardOutput()
        let dataToWrite = outputString.dataUsingEncoding(NSUTF8StringEncoding)
        
        if let writeData = dataToWrite {
            outputHandle.writeData(writeData)
        }
    }
    
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
    
    func readLnDouble() -> Double? {
        return Double(getLine())
    }
    
    
    func enterInfo() {
        print("What's the original price?")
        let readOrigPrice = readLnDouble()
        if let originalPriceValue = readOrigPrice {
            originalPrice = originalPriceValue
        }
    
        print("How much tip give you?")
        let readTip = readLnInt()
        if let originalTip = readTip {
            tip = originalTip
        }

        print("What's the tax?")
        let readTax = readLnInt()
        if let originalTax = readTax {
            tax = originalTax
        }
    }
    
    func calculateTheTotal() -> Double {
        var returnValue = 0.0
        
        // calculate tip
        let tipAmount = (originalPrice * Double(tip)) / 100
        let taxAmount = (originalPrice * Double(tax)) / 100
        
        returnValue = originalPrice + tipAmount + taxAmount
        
        return returnValue
    }
    
    func printTotal() {
        let calculatedTotal = Int(round(calculateTheTotal()))
        print("The final price of the meal is $\(calculatedTotal).")
    }
    
}