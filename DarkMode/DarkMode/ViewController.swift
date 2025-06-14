//
//  ViewController.swift
//  DarkMode
//
//  Created by Aswin R on 29/09/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {
    }
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        
        let userInterfaceStyle = traitCollection.userInterfaceStyle
        
        if userInterfaceStyle == .dark {
            dButton.tintColor = UIColor.white
        } else {
            dButton.tintColor = UIColor.blue
        }
    }

}

