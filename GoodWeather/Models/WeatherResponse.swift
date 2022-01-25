//
//  WeatherResponse.swift
//  GoodWeather
//
//  Created by Buana on 25/01/22.
//

import Foundation

struct WeatherResponse: Decodable{
    let main: Weather
    let name: String
}

struct Weather: Decodable{
    let temp: Double
    let humidity: Double
}
