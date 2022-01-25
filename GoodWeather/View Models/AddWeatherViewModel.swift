//
//  AddWeatherViewModel.swift
//  GoodWeather
//
//  Created by Buana on 25/01/22.
//

//MARK: Yang akan menyediakan data dari AddWeatherViewController
//MARK: ini jugda dapat perform action yang berbeda ketika berada di halaman AddWeather untuk 'menambahkan' weather.
import Foundation

class AddWeatherListViewModel{
    
}

class AddWeatherViewModel{
    func addWeather(for city: String, completion: @escaping (WeatherViewModel) -> Void){
        let weatherURL = Constants.Urls.urlForWeatherByCity(city: city)
        
        //MARK: Construct Weather Resource
        let weatherResource = Resource<WeatherResponse>(url: weatherURL) { data in
            let weatherResponse = try? JSONDecoder().decode(WeatherResponse.self, from: data)
            
            return weatherResponse
        }
        
        //MARK: APIService
        APIService().load(resource: weatherResource) { result in
            if let weatherResource = result{
                //MARK: Setelah di unwrap langsung di convert ke ViewModel.
                let vm = WeatherViewModel(weather: weatherResource)
                completion(vm)
            }
        }
    }
}
