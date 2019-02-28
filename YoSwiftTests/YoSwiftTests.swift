//
//  YoSwiftTests.swift
//  YoSwiftTests
//
//  Created by Yusuke Ohashi on 2019/02/19.
//  Copyright © 2019 Yusuke Ohashi. All rights reserved.
//

import XCTest
@testable import YoSwift

class YoSwiftTests: XCTestCase {

    override func setUp() {
    }

    override func tearDown() {
    }

    func testExample() {
        XCTAssertTrue(" hello ".yo.trim() == "hello", "Spaces should be trimmed.")
        XCTAssertTrue(" hello " == " hello ")
        XCTAssertFalse(" hello ".yo.trim() == "hello ", "Spaces should be trimmed.")
    }
    
    func testInt() {
        XCTAssertTrue(5.yo.to_s() == "5", "converted into String")
    }
    
    func testArray() {
        let names = ["nick", "mike", "brian"]
        XCTAssertTrue(names.yo.alphabeticalSort() == ["brian", "mike", "nick"])

        let numbers = [1,2,3]
        XCTAssertTrue(numbers.yo.sum() == 6)
        XCTAssertTrue(numbers.yo.remove(1) == [2,3])
        XCTAssertTrue(numbers == [1,2,3])
    }

    func testPerformanceString() {
        let number = 5

        self.measure {
            for _ in 0..<1000 {
                "\(number)"
            }
        }
    }
    
    func testPerformanceInt() {
        self.measure {
            for _ in 0..<1000 {
                5.yo.to_s()
            }
        }
    }

}
