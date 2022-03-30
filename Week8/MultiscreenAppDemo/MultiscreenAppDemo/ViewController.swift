//
//  ViewController.swift
//  MultiscreenAppDemo
//
//  Created by zebra on 2021-11-01.
//

import UIKit

class ViewController: UIViewController {

    // outlets
    @IBOutlet weak var txtUsername: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // action
    @IBAction func btnPressed(_ sender: Any) {
       
        // 1. get a reference to the second screen
        guard let screen2 = storyboard?.instantiateViewController(identifier: "screen2yellow") as? Screen2ViewController else {
            print("Cannot find a screen with an id of screen2yellow")
            return
        }
        
        // 2. Get the username from the text box
        let username = txtUsername.text!
        print("The user name  from the text box is: \(username)")
        
        // 3. "Send" the username to screen 2
        screen2.usernameFromScreen1 = username

        // 3b. hardcode some data to send to screen 2
        screen2.age = 55
        screen2.isSleeping = true
        screen2.password = "thisismySuperSecretP@55word!"
        
        // dog
        screen2.dogFromScreen1 = Dog(name:"Polo", breed:"Poodle", color:"pink")
        
        
        // 4. show the screen
        show(screen2, sender:self)
    }
    
    @IBAction func btnGoToScreen3Pressed(_ sender: Any) {
        guard let screen3 = storyboard?.instantiateViewController(identifier: "screen3blue") as? Screen3ViewController else {
            print("Cannot find a screen with an id of screen3blue")
            return
        }

        // 2. show the screen
        show(screen3, sender:self)
    
    }
}

