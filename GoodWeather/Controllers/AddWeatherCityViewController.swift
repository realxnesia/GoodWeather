//
//  AddWeatherCityViewController.swift
//  GoodWeather
//
//  Created by DHIKA ADITYA ARE on 25/01/22.
//

import UIKit

class AddWeatherCityViewController: UIViewController {

    @IBOutlet weak var addWeatherTextField: UITextField!
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
    @IBAction func didCityButtonSaveTapped(_ sender: UIButton) {
    }
    @IBAction func didCloseBarButton(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
