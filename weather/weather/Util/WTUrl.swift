//
//  WTUrl.swift
//  weather
//
//  Created by 임준식 on 2020/05/04.
//  Copyright © 2020 JUN-SIK LIM. All rights reserved.
//

/*
 * API URL
 */

import Foundation

struct WTUrl {
    
    // 고정 URL
    static let developerKey = "5bd9273c6409d824a9eaf665a8a80ac3"
    static let prefixUrl = "https://api.darksky.net/forecast/\(developerKey)"
    // webView
    static let weatherWebUrl = "https://weather.com/ko-KR/weather/today/l/"
    
    // 상세 URL
    struct postFixUrl {
        
        // (currently, hourly, daily), 한글
        let getWeather = "?exclude=minutely,alerts,flag&lang=ko"
        
        // web view 한글
        let getWeatherWeb = "?par=apple_widget&locale=ko_KR"
        
    }
}
