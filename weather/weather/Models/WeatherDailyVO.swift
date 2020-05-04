//
//  WeatherDailyVO.swift
//  weather
//
//  Created by 임준식 on 2020/05/04.
//  Copyright © 2020 JUN-SIK LIM. All rights reserved.
//

/*
 * 일별 날씨 VO
 */

import Foundation

class WeatherDailyVO: NSObject {
    var dailyTime: DayOfWeek? = .wed  // 요일
    var icon: WeatherIcon? = .rain    // 날씨 아이콘
    var temperatureMin: Int? = 28     // 최고기온
    var temperatureMax: Int? = 30     // 최저기온
}
