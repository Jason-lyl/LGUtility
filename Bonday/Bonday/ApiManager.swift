//
//  ApiManager.swift
//  Bonday
//
//  Created by bonday012 on 2018/3/27.
//  Copyright © 2018年 bonday012. All rights reserved.
//

import Foundation
import Moya


enum ApiManager {
    case KHot_OpenCourse_latest
    case zen
    case showUser(id: Int)
    case createUser(firstName: String, lastName: String)
    case updateUser(id: Int, firstName: String, lastName: String)
    case showAccounts
}

// MARK: - TargetType Protocol Implementation
extension ApiManager: TargetType {
    var baseURL: URL { return URL(string: KBonDay)! }
    var path: String {
        switch self {
        case .KHot_OpenCourse_latest:
            return "videos/page?page=1&size=4&code=media_type_adviser"
        case .zen:
            return "/zen"
        case .showUser(let id), .updateUser(let id, _, _):
            return "/users/\(id)"
        case .createUser(_, _):
            return "/users"
        case .showAccounts:
            return "/accounts"
        }
    }
    //区分get 和post
    var method: Moya.Method {
        return .get
    }
  
    var headers: [String: String]? {
        return ["Content-type": "application/json","Authorization":""]
    }
//    var parameters: [String:Any] {
//        switch self {
//        case .KHot_OpenCourse_latest:
//            return nil
//        default:
//            return nil
//        }
//    }
    // The method used for parameter encoding
    var parmeterEncoding: ParameterEncoding {
        return URLEncoding.default
    }
    // Provides stub data for use in testing
    var sampleData: Data {
        return "".data(using: String.Encoding.utf8)!
    }
    // the type of http task to be performed.
    var task: Task {
        return .requestPlain
    }
    //whether or not to perform Alamofire validation. Defaults 'false'
    var validate: Bool {
        return false
    }
}
// MARK: - Helpers
private extension String {
    var urlEscaped: String {
        return addingPercentEncoding(withAllowedCharacters: .urlHostAllowed)!
    }
    
    var utf8Encoded: Data {
        return data(using: .utf8)!
    }
}
