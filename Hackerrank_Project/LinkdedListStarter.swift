//
//  LinkdedListStarter.swift
//  Hackerrank_Project
//
//  Created by Markus Kopf on 15/01/16.
//  Copyright © 2016 markuskopf. All rights reserved.
//

import Foundation


class LinkedListStarter {
    
    func getLine() -> String{
        var buf = String()
        var c = getchar()
        while c != EOF && c != 10 {
            buf.append(UnicodeScalar(UInt32(c)))
            c = getchar()
        }
        
        return buf
    }
        
    func readLnInt() -> Int {
        return Int(getLine())!
    }
    
    func insert(data: Int, head: Node?) -> Node {
    
        if let _ = head {
            var lastNode = head
            
            while lastNode!.next != nil {
                lastNode = lastNode!.next
            }
            
            let newNode: Node = Node(pData: data)
            lastNode?.next = newNode
            
        } else {
            return Node(pData: data)
        }
        
        return head!
    }
    
    func display(head: Node?) {
        var currentNode: Node? = head!
            
        while currentNode != nil {
            print("\(currentNode!.data)")
            currentNode = currentNode?.next
        }
    }
    
    func start() {
        let N = readLnInt()
        var head: Node? = nil
        
        for _ in 1...N {
            head = insert(readLnInt(), head: head)
        }
        
        display(head)
    }
    
}