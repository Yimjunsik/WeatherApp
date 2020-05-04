//
//  ApiClient.swift
//  weather
//
//  Created by 임준식 on 2020/05/04.
//  Copyright © 2020 JUN-SIK LIM. All rights reserved.
//

/*
 * API interface
 */

import Foundation
import NetworkExtension


// MARK : - request를 위한 interface
public protocol NetworkRequest {
    func request(
        _ url: String,
        success: @escaping (Data) -> Void,
        fail: @escaping (NSError?) -> Void)
}


// MARK : - request 메서드 (공통)
public class ApiClient: NetworkRequest {
    
    public func request(_ url: String, success: @escaping (Data) -> Void, fail: @escaping (NSError?) -> Void) {
        do {
            // url 생성
            guard let apiURI = URL(string:"\()
        }
    }
}
