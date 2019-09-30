//
//  LocationListNetworking.swift
//  WeatherApp
//
//  Created by Jairo Dave Mejia on 17/09/2019.
//  Copyright © 2019 ako2cjairo. All rights reserved.
//

import Foundation

class LocationListNetworking {
    
    private init() {}
    static let shared = LocationListNetworking()
    
    func getOfflineData(forResource resource: String) -> [DailyForecast]? {
        if let data:[DailyForecast] = NetworkingService.shared.getJsonDataOffline(forResource: resource) {
            return data
        }
        
        return [DailyForecast]()
    }
}
