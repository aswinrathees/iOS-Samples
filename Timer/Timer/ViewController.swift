//
//  ViewController.swift
//  Timer
//
//  Created by Aswin R on 23/09/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var timerLabel: UILabel!
    
    var timer = Timer()
    var counter = 10
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunction), userInfo: nil, repeats: true)
    }

    @IBAction func buttonClicked(_ sender: Any) {
        print("Button clicked")
    }
    
    @objc func timerFunction() {
        timerLabel.text = "Timer \(counter)"
        counter -= 1
        
        if (counter == 0) {
            timer.invalidate()
            timerLabel.text = "Timer expired"
        }
    }
}

