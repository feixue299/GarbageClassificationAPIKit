//
//  GarbageClassificationAPIServer.swift
//  GarbageClassificationAPIKit
//
//  Created by YB on 2019/7/9.
//  Copyright © 2019 YB. All rights reserved.
//

import Foundation
import Moya

public struct GarbageClassificationAPIServer {
    
    public init() { }
    
    public var provider = MoyaProvider<GarbageClassificationAPIKit>()
    
    @discardableResult
    public func request(_ target: GarbageClassificationAPIKit,
                        callbackQueue: DispatchQueue? = .none,
                        progress: ProgressBlock? = .none,
                        completion: @escaping Completion) -> Cancellable {
        return provider.request(target, callbackQueue: callbackQueue, progress: progress, completion: completion)
    }
}
