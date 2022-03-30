//
//  Screen2ViewController.swift
//  MultiscreenAppDemo
//
//  Created by zebra on 2021-11-01.
//

import UIKit

class Screen2ViewController: UIViewController {

    // stored property
    // var age:Int = 5
    
    // receving variable: It will store any data that was received from Screen #1
    // data type = match the data type of the information that is being sent
    var usernameFromScreen1:String = ""
    var password:String = ""
    var age:Int = 0
    var isSleeping:Bool = false
    
    var dogFromScreen1:Dog?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // do something with the data you got from screen 1
        print("Screen 1 sent me: \(self.usernameFromScreen1)")
        print("Screen 1 sent me: \(self.password)")
        print("Screen 1 sent me: \(self.age)")
        // using self is optional
        print("Screen 1 sent me: \(isSleeping)")
        
        guard let dog = dogFromScreen1 else {
            return
        }
        print("Dog from screen 1: \(dog.name)")
        dog.bark()
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
