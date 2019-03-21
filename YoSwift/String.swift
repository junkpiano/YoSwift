//
//  String.swift
//  YoSwift
//
//  Created by Yusuke Ohashi on 2019/02/19.
//  Copyright © 2019 Yusuke Ohashi. All rights reserved.
//

import Foundation

extension String: YoCompatible {
}

//MARK: String

public extension YoClassContainer where Base == String {

    public func truncate(_ maxLength:Int) -> String {
        if base.utf8.count > maxLength {
            return String(base.prefix(maxLength))
        } else {
            return base
        }
    }
    
    public func trim() -> String {
        return base.trimmingCharacters(in: CharacterSet.whitespaces)
    }

}
