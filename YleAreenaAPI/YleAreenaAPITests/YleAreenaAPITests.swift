//
//  YleAreenaAPITests.swift
//  YleAreenaAPITests
//
//  Created by Juhani Vanhala on 31.1.2016.
//  Copyright © 2016 Juhani Vanhala. All rights reserved.
//

import XCTest
@testable import YleAreenaAPI

class YleAreenaAPITests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testGetQueryLine() {
        var itemQuery = YleMediaItemQuery()
        itemQuery.ids.append("id1")
        
        var queryString = itemQuery.toQueryLine("https://external.api.yle.fi")
        XCTAssert(queryString == "https://external.api.yle.fi?id=id1", "Initial query string not correct")
        
        itemQuery.ids.append("id2")
        queryString = itemQuery.toQueryLine("https://external.api.yle.fi")
        XCTAssert(queryString.containsString("id=id1,id2"), "Multiple ids not appended correctly")
        
        itemQuery.availability = YleMediaAvailability.InFuture
        queryString = itemQuery.toQueryLine("https://external.api.yle.fi")
        XCTAssert(queryString.containsString("&availability=in-future"), "Query string not correct")
        
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }
    
}
