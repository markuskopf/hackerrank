//
//  Grade.swift
//  Hackerrank_Project
//
//  Created by Markus Kopf on 12/01/16.
//  Copyright © 2016 markuskopf. All rights reserved.
//

import Foundation

class Grade: Student {

    var score: Int
    
    init(pFirstName: String, pLastName: String, pPhoneNumber: Int, pScore: Int) {
        score = pScore
        super.init(pFirstName: pFirstName, pLastName: pLastName, pPhoneNumber: pPhoneNumber)
    }
    
    func calculate() -> Character {
        if score < 40 {
            return "D";
        } else if score >= 40 && score < 60 {
            return "B";
        } else if score >= 60 && score < 75 {
            return "A";
        } else if score >= 75 && score < 90 {
            return "E";
        } else if score >= 90 && score <= 100 {
            return "O";
        } else {
            return "X";
        }
    }
}

   