//
//  MZRubbishTypeResponse.swift
//  GarbageClassificationAPIKit
//
//  Created by YB on 2019/7/9.
//  Copyright © 2019 YB. All rights reserved.
//

import Foundation

public struct MZRubbishType: Codable {
    
    public struct Aim: Codable {
        public let goodsName: String
        public let goodsType: String
    }
    
    public let aim: Aim
    public let recommendList: [Aim]
}

public typealias MZRubbishTypeResponse = MZResponse<MZRubbishType>
