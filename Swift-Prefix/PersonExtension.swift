//
//  PersonExtension.swift
//  Swift-Prefix
//
//  Created by Joker on 2019/12/12.
//  Copyright © 2019 Joker. All rights reserved.
//

import Foundation

extension Person: JKRPrefixProtocol {
    fileprivate static var LINES_KEY: Void?
}
extension JKRPrefix where ProxyType: Person {
    func say() {
        if let str = lines {
            print("\(proxy.name) say: \(str)")
        } else {
            print("\(proxy.name) say: 大家好，我是某龙套")
        }
    }
    
    var lines: String? {
        get {
            objc_getAssociatedObject(proxy, &ProxyType.LINES_KEY) as? String
        }
        set {
            objc_setAssociatedObject(proxy, &ProxyType.LINES_KEY, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }
    
    static func person(name: String = "某龙套", age: Int, lines: String? = nil) -> Person{
        var p = Person.init(name: name, age: age)
        p.jkr.lines = lines
        return p
    }
}
