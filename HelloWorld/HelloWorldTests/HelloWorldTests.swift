//
//  HelloWorldTests.swift
//  HelloWorldTests
//
//  Created by Anthony Escalona on 3/14/15.
//  Copyright (c) 2015 AppCoda. All rights reserved.
//

import UIKit
import XCTest

class HelloWorldTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        XCTAssert(true, "pass")
    }

     func testExample2() {
        // This is an example of a functional test case.
        XCTAssert(true, "pass")
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
    }
}
