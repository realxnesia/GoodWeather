//
//  AddWeatherCityViewController.swift
//  GoodWeather
//
//  Created by DHIKA ADITYA ARE on 25/01/22.
//

import UIKit

//MARK: inisiasi Delegate
protocol AddWeatherDelegate{
    func addWeatherDidSave(vm: WeatherViewModel)
}

class AddWeatherCityViewController: UIViewController {
    var delegate: AddWeatherDelegate?

    @IBOutlet weak var addWeatherTextField: UITextField! //city
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    private var addWeatherVM = AddWeatherViewModel()
    
    @IBAction func didCityButtonSaveTapped(_ sender: UIButton) {
/*
        if let city = addWeatherTextField.text{
            let weatherURL = URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(city)&appid=942a800f3a8b7d2b39b395b6a98230d7&units=imperial")
            let weatherResource = Resource<Any>(url: weatherURL!){ data in
                return data
            }
            
            APIService().load(resource: weatherResource) { result in
                
            }
        }
*/
        //MARK: - Unwrap
        if let city = addWeatherTextField.text{
            addWeatherVM.addWeather(for: city) { vm in
                //MARK: Kirim view modelnya kembali lagi ke WeatherListViewController dengan delegate setelah delegate di inisiasi
                self.delegate?.addWeatherDidSave(vm: vm)
                self.dismiss(animated: true, completion: nil)
            }
        }
        
        
    }
    @IBAction func didCloseBarButton(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
