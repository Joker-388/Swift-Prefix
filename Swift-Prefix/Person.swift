//
//  Person.swift
//  Swift-Prefix
//
//  Created by Joker on 2019/12/11.
//  Copyright © 2019 Joker. All rights reserved.
//

import Foundation

class Person {
    var name: String
    var age: Int
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    convenience init() {
        self.init(name: "unknow", age: 1)
    }
    
    func say() {
        print("Hi, my name is \(name)")
    }
    
    func test() {
        print(Self.self == type(of: self)) // true
    }

    static func test() {
        print(Self.self == self.self) // true
    }
    
    deinit {
        print("Person deinit")
    }
}
