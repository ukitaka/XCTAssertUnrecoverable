//
//  XCTAssertUnrecoverable.swift
//  waft
//
//  Created by ukitaka on 2018/05/01.
//  Copyright © 2018 waft. All rights reserved.
//

import XCTest
import Foundation

public func XCTAssertUnrecoverable<T>(file: StaticString = #file, line: UInt = #line, block: () throws -> T) {
    do {
        let result = try Fortify.exec(block: block)
        XCTFail("Unrecoverable error did not occur. returned: \(result)", file: file, line: line)
    } catch {
        // FIXME:
        // This is so messy. If `block` throws error its code is -1, test will be passed.
        if (error as NSError).code == -1 {
            XCTAssertTrue(true, file: file, line: line)
        } else {
            XCTFail("Unexpected recoverable error occurred: \(error.localizedDescription)", file: file, line: line)
        }
    }
}
public func XCTAssertUnrecoverable<T>(file: StaticString = #file, line: UInt = #line, _ value: @autoclosure () throws -> T) {
    XCTAssertUnrecoverable(file: file, line: line, block: value)
}
