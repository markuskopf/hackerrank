//
//  DifferenceStarter.swift
//  Hackerrank_Project
//
//  Created by Markus Kopf on 14/01/16.
//  Copyright © 2016 markuskopf. All rights reserved.
//

import Foundation

class DifferenceStarter {
    
    func start() {
        let N = Int(readLine()!)!
        let a = readLine()!.characters.split(" ").map(String.init).map{Int($0)!}
        
        let d = Difference(a: a)
        
        d.computeDifference()
        
        print(d.maximumDifference)
    }
    
}