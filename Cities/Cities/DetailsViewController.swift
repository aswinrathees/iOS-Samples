//
//  DetailsViewController.swift
//  TableView
//
//  Created by Aswin R on 23/09/22.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var cityName: UILabel!
    
    @IBOutlet weak var cityImage: UIImageView!
    
    var selectedCityName = ""
    var selectedCityImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        cityName.text = selectedCityName
        cityImage.image = selectedCityImage
    }
}
