//
//  ViewController.swift
//  Is Prime
//
//  Created by student on 6/26/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userInput: UITextField!
    @IBOutlet weak var results: UILabel!
    
    @IBAction func checkIfPrime(_ sender: Any) {
        let userInputString = userInput.text
        let userInputNumber = Int(userInputString!)
        
        var counter = 2
        var isPrime = true
        
        while counter < userInputNumber! {
            if userInputNumber! % counter == 0{
                isPrime = false
            }
            counter += 1
        }
        
        if isPrime {
            results.text = "\(userInputString!) is prime!"
        } else {
            results.text = "\(userInputString!) is not Prime"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

