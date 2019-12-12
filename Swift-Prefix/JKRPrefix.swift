//
//  JKRPrefix.swift
//  Swift-Prefix
//
//  Created by Joker on 2019/12/11.
//  Copyright © 2019 Joker. All rights reserved.
//

import Foundation

struct JKRPrefix<ProxyType> {
    var proxy: ProxyType
}

protocol JKRPrefixProtocol : Any {}
extension JKRPrefixProtocol {
    var jkr: JKRPrefix<Self> {
        get { JKRPrefix(proxy: self) }
        set {}
    }
    static var jkr: JKRPrefix<Self>.Type {
        get { JKRPrefix<Self>.self }
        set {}
    }
}
