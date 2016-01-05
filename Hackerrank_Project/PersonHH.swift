//
//  PersonHH.swift
//  Hackerrank_Project
//
//  Created by Markus Kopf on 04/01/16.
//  Copyright © 2016 markuskopf. All rights reserved.
//

import Foundation


class PersonHH {
    
    var age : Int = 0
    
    init (initial_Age:Int)
    {
        // Add some more code to run some checks on initial_AgeOfPerson
        if initial_Age < 0 {
            age = 0
            print("This person is not valid, setting age to 0.")
        } else {
            age = initial_Age
        }
        
    }
    
    func amIOld ()
    {
        // Do some computations in here and print out the correct statement to the console
        if age < 13 {
            print("You are young.")
        } else if age >= 13 && age < 18 {
            print("You are a teenager.")
        } else {
            print("You are old.")
        }
        
    }
    
    func yearPasses()
    {
        // Increment the age of the person in here
        age++
    }
}