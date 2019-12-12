//
//  StringExtension.swift
//  Swift-Prefix
//
//  Created by Joker on 2019/12/12.
//  Copyright © 2019 Joker. All rights reserved.
//

import Foundation

extension String: JKRPrefixProtocol {}
extension JKRPrefix where ProxyType == String {
    func numberCount() -> Int {
        var count = 0
        for c in proxy where ("0"..."9").contains(c) {
            count += 1
        }
        return count
    }
    
    static func hello() {
        print(ProxyType.self, "向你问好")
    }
}
