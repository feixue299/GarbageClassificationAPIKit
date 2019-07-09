//
//  MZResponse.swift
//  NewsAPIKit
//
//  Created by YB on 2019/7/9.
//  Copyright © 2019 YB. All rights reserved.
//

import Foundation

public struct MZResponse<DataType: Codable>: Codable {
    public let code: Int
    public let data: DataType
    public let msg: String
}
