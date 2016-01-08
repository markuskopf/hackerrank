//
//  main.swift
//  tester
//
//  Created by Markus Kopf on 03/01/16.
//  Copyright © 2016 markuskopf. All rights reserved.
//

import Foundation


// day 2
var arithmetic = Arithmetic()
arithmetic.enterInfo()
arithmetic.printTotal()


// day 3
var modulo = Modulo()
modulo.enterInfo()


// day 4
var p = PersonHH(initial_Age: -1)
p.yearPasses()
p.yearPasses()
p.amIOld()

// day 5
var loops = Loops()
loops.start()

// day6
var recursion = Recursion()
recursion.start()


// day 7
var arrays = Arrays()
arrays.start()


/*
var T = Int(readLine(stripNewline: true)!)!
while T-- > 0 {
    let age = Int(readLine(stripNewline: true)!)!
    var p = PersonHH (initial_Age: age)
    p.amIOld()
    
    for i in 1 ... 3
    {
        p.yearPasses()
    }
    
    p.amIOld()
    print ("");
}
*/