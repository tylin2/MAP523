import UIKit

class ViewController: UIViewController {

    var counter:Int = 0
    
    @IBOutlet weak var lblCurrNumber: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // get the initial value displayed in the UI
        print("Intial value of label:")
        print(lblCurrNumber.text!)
        
        // lblCurrNumber.text
        // update counter variable to = whatever is in the lable
        // we need to convert the contents of the label from a String
        // to an Int
        // nil coaelasing
         counter = Int(lblCurrNumber.text!) ?? -1
//        Int("abc") --> nil
//        Int("255") --> 255
        
        print("Curr value of counter: \(counter)")
//
    }

    
    
    // event handler for the button
    @IBAction func countUpPressed(_ sender: Any) {
        
        print("Count up button pressed")
        counter = counter + 1
        print("Current counter value is: \(counter)")
        
        // update the label to show the latest value
        lblCurrNumber.text = "\(counter)"
    }
    

    
    @IBAction func countDownPressed(_ sender: Any) {
        print("Down button pressed")
        counter = counter - 1
        print("Current counter value is: \(counter)")
        
        // update the label to show the latest value
        lblCurrNumber.text = "\(counter)"
    }
    
    
    
}

