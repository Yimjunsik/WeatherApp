//
//  ApiClient+Weather.swift
//  weather
//
//  Created by 임준식 on 2020/05/04.
//  Copyright © 2020 JUN-SIK LIM. All rights reserved.
//

/*
 * 날씨 호출 API Util
 */

import Foundation


extension ApiClient{
    
    
    // MARK: - 날씨 API 호출 response 데이터 처리
    func getWeatherList(weather: NSDictionary, timezone: String?) -> Dictionary<String, Any> {
        do {
            let weatherVO = WeatherVO()
            
            // 지역별 날씨
            weatherVO.latitude = weather["latitude"] as? Double
            weatherVO.logitude = weather["logitude"] as? Double
            weatherVO.timezone = timezone ??  "▼ " + WTFormat().toCityString(weather["timezone"] as! String)
            
            let currently = weather["currently"] as! NSDictionary
            

        }
    }
}
