//
//  MZServer.swift
//  NewsAPIKit
//
//  Created by YB on 2019/7/9.
//  Copyright © 2019 YB. All rights reserved.
//

import Foundation
import Moya

public struct MZServer<Response: Codable> {
    public var newsAPIServer = GarbageClassificationAPIServer()
    public var target: GarbageClassificationAPIKit
    
    public init(target: GarbageClassificationAPIKit) {
        self.target = target
    }
    
    public typealias RequestResult = Result<Response, Error>
    
    public func request(_ success: ((RequestResult) -> Void)?, failure: ((MoyaError) -> Void)? = nil) {
        newsAPIServer.request(target) { (result) in
            switch result {
            case .success(let value):
//                print("value:\(try! value.mapJSON())")
                success?(RequestResult.init(catching: { () -> Response in
                    return try JSONDecoder().decode(Response.self, from: value.data)
                }))
            case .failure(let error):
                failure?(error)
            }
        }
    }
    
}
