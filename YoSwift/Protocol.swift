//
//  Protocol.swift
//  YoSwift
//
//  Created by Yusuke Ohashi on 2019/02/19.
//  Copyright © 2019 Yusuke Ohashi. All rights reserved.
//

import Foundation

public protocol YoCompatible {
    associatedtype CompatibleType
    
    var yo: CompatibleType { get }
}

public final class YoClassContainer<Base> {
    let base: Base
    public init(_ base: Base) {
        self.base = base
    }
}

public extension YoCompatible {
    public var yo: YoClassContainer<Self> {
        return YoClassContainer(self)
    }
}
