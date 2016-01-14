//
//  Difference.swift
//  Hackerrank_Project
//
//  Created by Markus Kopf on 14/01/16.
//  Copyright © 2016 markuskopf. All rights reserved.
//

import Foundation


class Difference {
    
    var elements = [Int]()
    var maximumDifference : Int!
    
    init(a: [Int]) {
        elements = a;
    }
    
    func computeDifference() {
        
        if elements.count<1 {
            maximumDifference = 0
            return
        }
        
        let sortedArray = elements.sort { (a, b) -> Bool in
            return a < b
        }
        
        maximumDifference = sortedArray.last! - sortedArray.first!
    }
    
}