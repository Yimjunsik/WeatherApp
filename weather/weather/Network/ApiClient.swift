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


// MARK: - request를 위한 interface
public protocol NetworkRequest {
    func request(
        _ url: String,
        success: @escaping (Data) -> Void,
        fail: @escaping (NSError?) -> Void)
}


// MARK: - request 메서드 (공통)
public class ApiClient: NetworkRequest {
    
    public func request(_ url: String, success: @escaping (Data) -> Void, fail: @escaping (NSError?) -> Void) {
        do {
            // url 생성
            guard let apiURI = URL(string:"\(WTUrl.prefixUrl)/\(url)") else {
                print("Invalid API URL)")
                return
            }
            NSLog("==========> [Request] URL = \(url)\n\n")
            
            // REST API 호출
            let data = try Data(contentsOf: apiURI)
            
            // 로그 출력
            let log = NSString(data: data, encoding: String.Encoding.utf8.rawValue) ?? "" // NSString으로 인코딩
            NSLog("==========> [Response] Data = \(log)")
            
            success(data)
            
        } catch let err as NSError {
            // error 처리
            NSLog(err.localizedDescription)
            
            fail(err)
        }
    }
}

