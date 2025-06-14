//
//  ViewController.swift
//  PermanentStorage
//
//  Created by Aswin R on 22/09/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userName: UITextField!
    
    
    @IBOutlet weak var userAge: UITextField!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var ageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let storedName = UserDefaults.standard.object(forKey: "name") as? String

        let storedAge = UserDefaults.standard.object(forKey: "age") as? String
        if let myName = storedName as? String {
            nameLabel.text = myName
        }
        
        if let myAge = storedAge as? String {
            ageLabel.text = myAge
        }
    }
    
    @IBAction func deleteDetails(_ sender: Any) {
        UserDefaults.standard.removeObject(forKey: "name")
        
        UserDefaults.standard.removeObject(forKey: "age")
    }
    
    @IBAction func saveDetails(_ sender: Any) {
        UserDefaults.standard.set(userName.text!, forKey: "name")
        UserDefaults.standard.set(userAge.text!, forKey: "age")
        
        nameLabel.text = "Name : \(userName.text)"
        ageLabel.text = "Age : \(userAge.text)"
    }
}

