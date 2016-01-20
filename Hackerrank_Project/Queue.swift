//
//  QueueStack.swift
//  Hackerrank_Project
//
//  Created by Markus Kopf on 19/01/16.
//  Copyright © 2016 markuskopf. All rights reserved.
//

import Foundation

class Queue<T> {
    
    var top: NodeString<T>?
    
    func enQueue(key: T) {
        
        if top == nil {
            top = NodeString<T>()
        }
        
        if top?.key == nil {
            top?.key = key
            return
        }
        
        let childToUse: NodeString<T> = NodeString<T>()
        var current: NodeString = top!
        
        while (current.next != nil) {
            current = current.next!
        }
        
        childToUse.key = key
        current.next = childToUse
    }
    
    
    func deQueue() -> T? {
        
        let topItem = self.top?.key
        
        if topItem == nil {
            return nil
        }
        
        let queueItem: T? = top!.key!
        
        if let nextItem = top?.next {
            top = nextItem
        } else {
            top = nil
        }
        
        return queueItem
    }
    
    
    func isEmpty() -> Bool {

        if let _ : T = top?.key {
            return false
        } else {
            return true
        }
        
    }
    
    
    func peek() -> T? {
        return top?.key
    }
    
}