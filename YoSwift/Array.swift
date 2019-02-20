//
//  Array.swift
//  YoSwift
//
//  Created by Yusuke Ohashi on 2019/02/20.
//  Copyright © 2019 Yusuke Ohashi. All rights reserved.
//

import Foundation

extension Array: YoCompatible {}

extension YoClassContainer where Base == [Int] {
    
    func sum() -> Int {
        var result = 0
        base.forEach { (num) in
            result += num
        }
        
        return result
    }
}

extension YoClassContainer where Base == [String] {

    func alphabeticalSort() -> [String] {
        return base.sorted(by: <)
    }
    
}
