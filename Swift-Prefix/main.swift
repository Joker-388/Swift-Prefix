//
//  main.swift
//  Swift-Prefix
//
//  Created by Joker on 2019/12/11.
//  Copyright © 2019 Joker. All rights reserved.
//

import Foundation

var persons = [
    Person.jkr.person(name: "Jack", age: 31, lines: "我是有台词还露脸的大咖"),
    Person.jkr.person(name: "Ling", age: 21, lines: "我是男七号的裸替，能露下脸很开心"),
    Person.jkr.person(age: 36)
]

print(persons[1].jkr.lines ?? "")
print(persons[2].name, persons[2].age, persons[2].jkr.lines ?? "")

for p in persons {
    p.jkr.say()
}

