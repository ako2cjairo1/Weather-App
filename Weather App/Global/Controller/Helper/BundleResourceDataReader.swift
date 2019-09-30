//
//  BundleResourceDataReader.swift
//  WeatherApp
//
//  Created by Jairo Dave Mejia on 17/09/2019.
//  Copyright © 2019 ako2cjairo. All rights reserved.
//

import Foundation

func ReadData(forResource filename: String) -> Data? {
    let resultData: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
        fatalError("Can't find \(filename) in main Bundle.")
    }
    
    do {
        resultData = try Data(contentsOf: file)
    } catch { fatalError("Can't read the contents of file \(filename) in Bundle.") }
    
    
    return resultData
}
