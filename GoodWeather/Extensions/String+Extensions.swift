//
//  String+Extensions.swift
//  GoodWeather
//
//  Created by Buana on 25/01/22.
//

import Foundation

extension String{
    //MARK: - Escape disini artinya kita ingin memisahkan 2 string atau lebih sehingga dapat mereturn banyak kota.
    func escaped() -> String{
        return self.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? self
    }
}
