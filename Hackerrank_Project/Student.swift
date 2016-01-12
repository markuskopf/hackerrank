//
//  Student.swift
//  Hackerrank_Project
//
//  Created by Markus Kopf on 12/01/16.
//  Copyright © 2016 markuskopf. All rights reserved.
//

import Foundation

class Student {
    
    var firstName: String
    var lastName: String
    var phoneNumber: Int
    
    
    init(pFirstName: String, pLastName: String, pPhoneNumber: Int) {
        firstName = pFirstName
        lastName = pLastName
        phoneNumber = pPhoneNumber
       
    }
    
    func display() {
        print("First Name: \(firstName)")
        print("Last Name: \(lastName)")
        print("Phone: \(phoneNumber)")
    }
    
}