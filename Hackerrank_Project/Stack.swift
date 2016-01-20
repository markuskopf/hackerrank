//
//  Stack.swift
//  Hackerrank_Project
//
//  Created by Markus Kopf on 19/01/16.
//  Copyright © 2016 markuskopf. All rights reserved.
//

import Foundation

class Stack<T> {
    
    var items = [T]()
    
    func push(item: T) {
        items.append(item)
    }
    
    func pop() -> T {
        return items.removeLast()
    }
    
}