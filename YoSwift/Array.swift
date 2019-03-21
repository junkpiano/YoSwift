//
//  Array.swift
//  YoSwift
//
//  Created by Yusuke Ohashi on 2019/02/20.
//  Copyright © 2019 Yusuke Ohashi. All rights reserved.
//

import Foundation

extension Array: YoCompatible {
}

// MARK: Array

public extension YoClassContainer where Base: Sequence {
    public func remove<T: Equatable>(_ obj: T) -> [Base.Element] {
        return base.filter { $0 as? T != obj}
    }
}

// MARK: Integer Array

public extension YoClassContainer where Base == [Int] {
    
    public func sum() -> Int {
        var result = 0
        base.forEach { (num) in
            result += num
        }
        
        return result
    }
}

// MARK: String Array

public extension YoClassContainer where Base == [String] {

    public func alphabeticalSort() -> [String] {
        return base.sorted(by: <)
    }

}
