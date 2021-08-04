//
//  WeatherManager.swift
//  Clima
//
//  Created by Nikhil Gharge on 21/07/21.
//  Copyright © 2021 App Brewery. All rights reserved.
//

import Foundation

struct WeatherManager {
    
    var weatherURL = "https://api.openweathermap.org/data/2.5/weather?appid=15bccef64933b014ecd8c5bc58f907d0&units=metric"
    
    //Fetch weather Data
    func fetchData(cityName:String){
        let urlString = "\(weatherURL)&q=\(cityName)"
        
        //1. Create a URL
        if let url = URL(string:urlString){
            //2. Create the session a task
            let session = URLSession(configuration:.default)
            
            //3.Given the session a task
            session.dataTask(with: url) { (data, response, error) in
                if error == nil{
                    if let safeData = data{
                        let dataString = String(data:safeData, encoding:.utf8)
                        print(dataString)
                    }
                }
            }
        }
    }
}
