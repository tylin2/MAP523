//
//  RedViewController.swift
//  BuiltInControllersForMultiscreenNavigation
//
//  Created by zebra on 2021-11-01.
//

import UIKit

class YellowViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func goToScreen3(_ sender: Any) {
        guard let screen3 = storyboard?.instantiateViewController(identifier: "blueScreen") as? BlueViewController else {
                    print("Cannot find a screen with an id of blueScreen")
                    return
                }
        
        // if you need to send data do it here
        
        // show the next screen
        show(screen3, sender:self)
    }
}
