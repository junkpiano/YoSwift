//
//  Int.swift
//  YoSwift
//
//  Created by Yusuke Ohashi on 2019/02/19.
//  Copyright © 2019 Yusuke Ohashi. All rights reserved.
//

import Foundation

extension Int: YoCompatible {
}

// MARK: Int

public extension YoClassContainer where Base == Int {
    
    public func toString() -> String {
        return "\(base)"
    }
    
    public func to_s() -> String {
        return toString()
    }
    
}
