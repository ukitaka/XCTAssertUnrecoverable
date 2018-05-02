//
//  XCTAssertUnrecoverableTests.swift
//  waft
//
//  Created by ukitaka on 2018/05/02.
//  Copyright © 2018 waft. All rights reserved.
//

import Foundation
import XCTest
import XCTAssertUnrecoverable

class XCTAssertUnrecoverableTests: XCTestCase {
    struct ThrownError: Error { }
    
    func throwError() throws {
        throw ThrownError()
    }
    
    
    
    func testUnrecoverableErrors() {
        // fatalError
        XCTAssertUnrecoverable(fatalError("fatal error occurred."))
        
        // assertion / assertionFailure
        XCTAssertUnrecoverable(assertionFailure("assertion failure."))
        
        // precondition / preconditionFailure
        XCTAssertUnrecoverable(preconditionFailure("precondition failure."))
        
        // force unwrap
        let i: Int? = nil
        XCTAssertUnrecoverable(i!)
        
        // force try
        XCTAssertUnrecoverable(try! throwError())
        
        // out of range
        let arr = [0, 1, 2]
        XCTAssertUnrecoverable(arr[4])
    }
    
    func testFatalError() {
        XCTAssertUnrecoverable(fatalError())
        XCTAssertUnrecoverable(fatalError("fatal error occurred."))
    }
    
    func testAssert() {
        XCTAssertUnrecoverable(assert(1 == 2))
        XCTAssertUnrecoverable(assertionFailure("assertion failure."))
    }
    
    func testPrecondition() {
        XCTAssertUnrecoverable(precondition(1 == 2))
        XCTAssertUnrecoverable(preconditionFailure("precondition failure."))
    }
    
    func testForceUnwrap() {
        let i: Int? = nil
        XCTAssertUnrecoverable(i!)
    }
    
    func testForceTry() {
        //        struct ThrownError: Error { }
        //
        //        func throwError() throws {
        //            throw ThrownError()
        //        }
        //
        //        XCTAssertUnrecoverable(try! throwError())
    }
    
    func testOutOfRange() {
        let arr = [0, 1, 2]
        XCTAssertUnrecoverable(arr[4])
        XCTAssertUnrecoverable(arr[5])
    }
    
    static var allTests = [
        ("testFatalError", testFatalError),
        ("testAssert", testAssert),
        ("testPrecondition", testPrecondition),
        ("testForceUnwrap", testForceUnwrap),
        ("testForceTry", testForceTry),
        ("testOutOfRange",testOutOfRange),
        ]
}
