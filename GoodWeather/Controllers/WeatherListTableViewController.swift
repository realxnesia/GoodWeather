//
//  WeatherListTableViewController.swift
//  GoodWeather
//
//  Created by DHIKA ADITYA ARE on 25/01/22.
//

import UIKit

class WeatherListTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
        /*
        //MARK: Coba panggil API(Tidak recomend. direkomendasikan menggunakan view model)
        let weatherURL = URL(string: "https://api.openweathermap.org/data/2.5/weather?q=jakarta&appid=942a800f3a8b7d2b39b395b6a98230d7&units=imperial")
        let resource = Resource<WeatherResponse>(url: weatherURL!) { data in
            return try? JSONDecoder().decode(WeatherResponse.self, from: data)
        }
        
        
        //untuk 'completionnya' disini kita menggunakan tipe tertentu yang sudah kita tentukan. dalam hal ini model responsenya.
        APIService().load(resource: resource) { weatherResponse in
            //MARK: Alasan kita unwrap adalah karena ketika melakukan decode di atas, kita menggunakan try (optional)
            if let weatherResponse = weatherResponse{
                print(weatherResponse)
            }
        }
        */
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 1
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WeatherCell", for: indexPath) as! 	WeatherTableViewCell

        // Configure the cell...
//        cell.textLabel?.text = "Houston"
//        cell.detailTextLabel?.text = "99"
        cell.cityLabel.text = "Houston"
        cell.temperatureLabel.text = "70"

        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
