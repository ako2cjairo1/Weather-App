//
//  NetworkingService.swift
//  WeatherApp
//
//  Created by Jairo Dave Mejia on 17/09/2019.
//  Copyright © 2019 ako2cjairo. All rights reserved.
//

import Foundation
import CoreData

class NetworkingService {
    
    // Ensure that cannot be instantiated
    private init() {}
    // Singleton
    static let shared = NetworkingService()
    
    func getJsonData(fromURL url: URL, completion: @escaping(DailyForecastViewModel) -> Void) {
        
        getJsonDataGeneric(fromURL: url, asType: DailyForecastViewModel.self) { (data) in
            completion(data)
        }
    }
    
    func getJsonDataGeneric<T: Decodable>(fromURL url: URL, asType type: T.Type = T.self, completion: @escaping(T) -> Void) {
        let session = URLSession.shared
        
        let task = session.dataTask(with: url) { (data, res, error) in
            guard let data = data else { return }
            
            do {
                let json = try JSONDecoder().decode(type, from: data)
                completion(json)
            } catch {}
        }
        task.resume()
    }
    
    func getJsonDataOffline<T: Decodable>(forResource resource: String, asType type: T.Type = T.self) -> T? {
        if let data = ReadData(forResource: resource) {
            do {
                return try JSONDecoder().decode(type, from: data)
            } catch {
                fatalError("Couldn't parse \(resource) as \(T.self):\n\(error)")
            }
        }
        
        return nil
    }
}
