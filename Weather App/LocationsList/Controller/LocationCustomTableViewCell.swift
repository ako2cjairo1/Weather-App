//
//  LocationCustomTableViewCell.swift
//  WeatherApp
//
//  Created by Jairo Dave Mejia on 20/09/2019.
//  Copyright © 2019 ako2cjairo. All rights reserved.
//

import UIKit

class LocationCustomTableViewCell: UITableViewCell {
    @IBOutlet weak var cellBackgroundImage: UIImageView!
    @IBOutlet weak var cellSummaryLabel: UILabel!
    @IBOutlet weak var cellTemperatureLabel: UILabel!
    @IBOutlet weak var cellDayLabel: UILabel!
    @IBOutlet weak var cellIconImage: UIImageView!
    @IBOutlet weak var cellBlurEffect: UIVisualEffectView!
    
    func configureCell(forCell cell: DailyForecastViewModel) {
        cellBackgroundImage.layer.masksToBounds = false
        
        // Shadow
        cellBackgroundImage.layer.shadowOffset = CGSize(width: 0, height: 0)
        cellBackgroundImage.layer.shadowColor = UIColor.black.cgColor
        cellBackgroundImage.layer.shadowOpacity = 0.80
        cellBackgroundImage.layer.shadowRadius = 8
        
        cellBlurEffect.layer.opacity = 0.40
        
        cellBackgroundImage.image = UIImage(named: "cell-\(cell.icon)")
        cellSummaryLabel.text = cell.summary
        cellTemperatureLabel.text = cell.temperature
        // cellDayLabel.text = cell.day
        cellIconImage.image = UIImage(named: cell.icon)
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(false, animated: animated)
    }

}
