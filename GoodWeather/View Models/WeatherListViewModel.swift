//
//  WeatherListViewModel.swift
//  GoodWeather
//
//  Created by Buana on 25/01/22.
//

import Foundation

class WeatherListViewModel{
    
}

class WeatherViewModel{
    let weather: WeatherResponse
    
    init(weather: WeatherResponse){
        self .weather = weather
    }
    
    //MARK: Satuan
    var city: String{
        return weather.name
    }
    
    var temperature: Double{
        return weather.main.temp
    }
}
