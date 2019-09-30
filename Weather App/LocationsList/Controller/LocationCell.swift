//
//  CustomLocationCell.swift
//  WeatherApp
//
//  Created by Jairo Dave Mejia on 16/09/2019.
//  Copyright © 2019 ako2cjairo. All rights reserved.
//

import UIKit

class LocationCell1: UITableViewCell {
    
    @IBOutlet weak var cellBackgroundImage: UIImageView!
    @IBOutlet weak var cellTemperatureLabel: UILabel!
    @IBOutlet weak var cellDayLabel: UILabel!
    @IBOutlet weak var cellSummaryLabel: UILabel!
    @IBOutlet weak var cellForecastIconImage: UIImageView!
    
    
    func configureCell(forCell cell: DailyForecastViewModel) {
//        if let image:UIImage = UIImage(named: cell.icon) {
//            cellBackgroundImage.image = image
//        }
//        if let temperature:String = cell.temperature {
//            cellTemperatureLabel.text = temperature
//        }
//        if let loc:String = cell.location {
//            cellDayLabel.text = loc
//        }
//        if let summary:String = cell.summary {
//            cellSummaryLabel.text = summary
//        }
//        if let iconImage:UIImage = UIImage(named: "vid-\(cell.icon)") {
//            cellForecastIconImage.image = iconImage
//        }
        cellTemperatureLabel.text = "40º"
        cellDayLabel.text = "Today"
        cellSummaryLabel.text = "Mostly clear sky."
    }
}
