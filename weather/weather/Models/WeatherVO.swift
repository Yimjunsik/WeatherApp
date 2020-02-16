//
//  WeatherVO.swift
//  weather
//
//  Created by 임준식 on 2020/02/16.
//  Copyright © 2020 JUN-SIK LIM. All rights reserved.
//

/*
 * 날씨 기본 파라미터 VO
 */

import Foundation

class WeatherVO: NSObject {
    var latitude: Double?                   // 요청한 위도
    var logitude: Double?                   // 요청한 경도
    var timezone: String? = "Seoul"         // 요청한 지역명
    var temperature: Int? = 30              // 요청한 온도
    var icon : WeatherIcon? = .rain         // 요청한 아이콘
    
}
