//
//  main.swift
//  STDReadInWriteOut
//
//  Created by Markus Kopf on 02/01/16.
//  Copyright © 2016 markuskopf. All rights reserved.
//

import Foundation


class STDReadWriteHelper {
    
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
    
}