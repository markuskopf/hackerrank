//
//  Generic.swift
//  Hackerrank_Project
//
//  Created by Markus Kopf on 21/01/16.
//  Copyright © 2016 markuskopf. All rights reserved.
//

import Foundation

class Generic {
    
    
    
    func start () {
        let vInt = [1, 2, 3]
        let vString = ["Hello", "World"]
        
        Printer<Int>().printArray(vInt)
        Printer<String>().printArray(vString)
    }
}
