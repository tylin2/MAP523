// ALERT BOX CHECKLIST:
// - Did you create a new UIAlertController object and save to variable? (abc)
// - Did you set the title and message parameters?
// - Did you choose the style of your Alert Box? (Alert vs. ActionSheet)
// - Did you add buttons? (.addAction)
// - Did you remember to SHOW the alert box? (self.present(abc, animated:true))
// OPTIONAL:
// - Do your buttons need "click handlers"?
// - Do you need to include text boxes? (.addTextField(....))

import UIKit

class ViewController: UIViewController {

    // MARK: Outlet
    @IBOutlet weak var resultsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // MARK: Actions

    @IBAction func buttonPressed(_ sender: Any) {
        // 1. Create an Alert Box.
        let box = UIAlertController(title: "Weather Popup", message: "Will it rain today?", preferredStyle: .actionSheet)
        
        // 1b. Add some buttons
        
        box.addAction(UIAlertAction(title: "Yes", style: .default, handler: nil))
        box.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))
        box.addAction(UIAlertAction(title: "I don't know", style: .destructive, handler: nil))
        box.addAction(UIAlertAction(title: "Push me!", style: .default, handler: {
            action in
            // whatever code you want the program to execute when the person presses the PUSH ME
            // button
            print("Button was pushed!")
            let x = 25
            let y = 30
            print("Results of your math is \(x+y)")
            self.resultsLabel.text = "HELLO WORLD!"
        }))

        
        // 2. Show the popup
        self.present(box, animated: true)
    }
    
}

