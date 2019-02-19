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

extension YoClassContainer where Base == Int {
    
    func toString() -> String {
        return "\(base)"
    }
    
    func to_s() -> String {
        return toString()
    }
    
}
