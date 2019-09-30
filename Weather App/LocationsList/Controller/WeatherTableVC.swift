//
//  WeatherTableVC.swift
//  WeatherApp
//
//  Created by Jairo Dave Mejia on 16/09/2019.
//  Copyright © 2019 ako2cjairo. All rights reserved.
//

import UIKit

class WeatherTableVC: UITableViewController {
    
    // TODO: Create a model for list of Weather forecast for a location
    var dailyForecast = [DailyForecastViewModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Register the custom table view cell
        tableView.register(UINib(nibName: "LocationCustomCell", bundle: nil), forCellReuseIdentifier: "LocationCell")
        
        // Service to fetch data from API / offline data
        if let daily:[DailyForecast] = LocationListNetworking.shared.getOfflineData(forResource: "OfflineForecastData.json") {
            //self.dailyForecast = daily.map ({ return DailyForecastViewModel($0) })
            self.dailyForecast = daily.compactMap({ return DailyForecastViewModel($0) })
        }
        
        //tableView.reloadData()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dailyForecast.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:LocationCustomTableViewCell = tableView.dequeueReusableCell(withIdentifier: "LocationCell") as! LocationCustomTableViewCell

        cell.configureCell(forCell: dailyForecast[indexPath.row])
//        cell.cellIconImage.image = UIImage(named: "cell-\(dailyForecast[indexPath.row].icon)")
//        cell.cellDayLabel.text = "TODAY"
        return cell
    }
}
