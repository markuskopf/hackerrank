//
//  Printer.swift
//  Hackerrank_Project
//
//  Created by Markus Kopf on 21/01/16.
//  Copyright © 2016 markuskopf. All rights reserved.
//

import Foundation


struct Printer<type> {
    
    func printArray(item: [type]) {
        
        for value in item {
            print("\(value)")
        }
        
    }
    
}