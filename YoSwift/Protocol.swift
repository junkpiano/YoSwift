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
    
//    var yo: CompatibleType { get }
    static var yo: YoClassContainer<CompatibleType>.Type { get }
    var yo: YoClassContainer<CompatibleType> { get }
}

public final class YoClassContainer<Base> {
    var base: Base
    public init(_ base: Base) {
        self.base = base
    }
}

public extension YoCompatible {
    public static var yo: YoClassContainer<Self>.Type {
        return YoClassContainer<Self>.self
    }
    
    var yo: YoClassContainer<Self> {
        return YoClassContainer(self)
    }
    
}
