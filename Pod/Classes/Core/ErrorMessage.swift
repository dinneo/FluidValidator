//
//  ErrorMessage.swift
//  Pods
//
//  Created by FrogRain on 07/02/16.
//
//

import Foundation

public func ==(lhs: ErrorMessage, rhs: ErrorMessage) -> Bool {
    return lhs.hashValue == rhs.hashValue
}

func ==(lhs: Array<ErrorMessage>, rhs: Array<ErrorMessage>) -> Bool {
    return lhs.hash == lhs.hash
}

extension Array where Element:ErrorMessage {
    var hash: Int {
        get {
            var hash = 0
            forEach { (x: Array.Generator.Element) -> () in
                hash = hash ^ x.hashValue
            }
            return hash
        }
    }
}

public class ErrorMessage:Hashable {
    public var compact:String
    public var extended:String
    
    init() {
        self.compact = ""
        self.extended = ""
    }
    
    public var hashValue: Int {
        get {
            return self.compact.hash ^ self.extended.hash
        }
    }
}