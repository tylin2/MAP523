//
//  RedViewController.swift
//  BuiltInControllersForMultiscreenNavigation
//
//  Created by zebra on 2021-11-01.
//

import UIKit

class RedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func goToScreen2Yellow(_ sender: Any) {
        guard let screen2 = storyboard?.instantiateViewController(identifier: "yellowScreen") as? YellowViewController else {
                    print("Cannot find a screen with an id of screenYellow")
                    return
                }

        show(screen2, sender:self)
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
