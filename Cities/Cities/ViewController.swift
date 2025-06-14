//
//  ViewController.swift
//  TableView
//
//  Created by Aswin R on 23/09/22.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var cities = [String]()
    var cityImageList = [UIImage]()
    
    var chosenCityName = ""
    var chosenCityImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        
        cities.append("Mumbai")
        cities.append("Kolkata")
        cities.append("Chennai")
        cities.append("Bengaluru")
        cities.append("Kochi")
        
        cityImageList.append(UIImage(named: "mumbai.jpeg")!)
        cityImageList.append(UIImage(named: "kolkata.jpeg")!)
        cityImageList.append(UIImage(named: "chennai.jpeg")!)
        cityImageList.append(UIImage(named: "bengaluru.jpeg")!)
        cityImageList.append(UIImage(named: "kochi.jpeg")!)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        content.text = cities[indexPath.row]
        content.secondaryText = "City " + String( indexPath.row + 1)
        cell.contentConfiguration = content
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenCityName = cities[indexPath.row]
        chosenCityImage = cityImageList[indexPath.row]
        performSegue(withIdentifier: "passData", sender: nil)
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            self.cities.remove(at: indexPath.row)
            self.cityImageList.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "passData" {
            let destinationVC = segue.destination as! DetailsViewController
            destinationVC.selectedCityName = chosenCityName
            destinationVC.selectedCityImage = chosenCityImage
        }
    }
}

