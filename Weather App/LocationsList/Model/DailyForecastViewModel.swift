//
//  LocationForecast.swift
//  WeatherApp
//
//  Created by Jairo Dave Mejia on 17/09/2019.
//  Copyright © 2019 ako2cjairo. All rights reserved.
//

import UIKit

struct DailyForecastViewModel: Decodable {
    let location: String
    let temperature: String
    let summary: String
    let icon: String
    
    init(_ dailyForecastModel: DailyForecast) {
        location = ""
        temperature = "\(Int(dailyForecastModel.temperatureHigh ?? 0))º"
        summary = dailyForecastModel.summary ?? ""
        icon = dailyForecastModel.icon ?? ""
    }
}
