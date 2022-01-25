//
//  Constants.swift
//  GoodWeather
//
//  Created by Buana on 25/01/22.
//

import Foundation

struct Constants{
    struct Urls{
        static func urlForWeatherByCity(city: String) -> URL{
/*
            //MARK: - default settings
            let userDefaults = UserDefaults.standard
            let unit = (UserDefaults.value(forKey: "unit") as? String) ?? "imperial"
            
            return URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(city.escaped())&appid=942a800f3a8b7d2b39b395b6a98230d7&units=\(unit)")!
 */
            return URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(city.escaped())&appid=942a800f3a8b7d2b39b395b6a98230d7&units=imperial")!
        }
    }
}
