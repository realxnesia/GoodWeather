//
//  APIServices.swift
//  GoodWeather
//
//  Created by Buana on 25/01/22.
//

import Foundation

struct Resource<T>{
    let url: URL
    let parse: (Data) -> T? //parse datanya dari APICall dan mengkonvertnya menjadi tipe yang kita inginkan (bisa merupakan model)
}

final class APIService{
    func load<T>(resource: Resource<T>, completion: @escaping (T?) -> ()){
        URLSession.shared.dataTask(with: resource.url) { data, response, error in
            //MARK: Karena kita parseing completion namun berada di background, maka kita harus pastikan ada di main thread
            //hal ini dilakukan agar viewcontroller kita dapat mengupdate datanya
            print(data)
            if let data = data {
                DispatchQueue.main.async {
                    completion(resource.parse(data))
                }
            }else{
                completion(nil)
            }
        }.resume()
    }
}
