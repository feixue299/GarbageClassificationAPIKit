//
//  GarbageClassificationAPIKit.swift
//  GarbageClassificationAPIKit
//
//  Created by YB on 2019/7/9.
//  Copyright © 2019 YB. All rights reserved.
//

import Foundation
import Moya

public enum GarbageClassificationAPIKit {
    case mzRubbishType(name: String)
}

extension GarbageClassificationAPIKit: TargetType {
    public var baseURL: URL {
        return URL(string: "https://www.mxnzp.com/api")!
    }
    
    public var path: String {
        return "/rubbish/type"
    }
    
    public var method: Moya.Method {
        return .get
    }
    
    public var sampleData: Data {
        return Data()
    }
    
    public var task: Task {
        switch self {
        case .mzRubbishType(let name):
            return .requestParameters(parameters: ["name": name], encoding: URLEncoding.queryString)
        }
    }
    
    public var headers: [String : String]? {
        return nil
    }
}
