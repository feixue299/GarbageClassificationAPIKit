//
//  MZRubbishTypeServerTests.swift
//  GarbageClassificationAPIKitTests
//
//  Created by YB on 2019/7/9.
//  Copyright © 2019 YB. All rights reserved.
//

import XCTest
import GarbageClassificationAPIKit

class MZRubbishTypeServerTests: MZServerTests<MZRubbishTypeResponse> {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testRequest() {
        testServer(MZRubbishTypeServer(target: .mzRubbishType(name: "电脑")))
    }

}
