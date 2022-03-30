import UIKit

class ViewController: UIViewController {

    // MARK: outlets
    @IBOutlet weak var mySwitch: UISwitch!
    @IBOutlet var mainScreen: UIView!
    @IBOutlet weak var mySlider: UISlider!
    @IBOutlet weak var lblSliderValue: UILabel!
    @IBOutlet weak var myStepper: UIStepper!
    @IBOutlet weak var mySegmentControl: UISegmentedControl!
    @IBOutlet weak var myTextView: UITextView!
    @IBOutlet weak var myImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    
    // MARK: actions
    
    @IBAction func switchChanged(_ sender: Any) {
        print("Switch value changed!")
        print(mySwitch.isOn)
        
        if (mySwitch.isOn == true) {
            // change the background to yellow
            mainScreen.backgroundColor = UIColor.yellow
        }
        else {
            // change the background to white.
            mainScreen.backgroundColor = UIColor.white
        }
        // true or false depending on what
        // state the switch is in

//        print("Value from sender: \(sender.isOn)")
    }
    
    
    @IBAction func sliderValueChanged(_ sender: Any) {
        print("Slider value changed! \(mySlider.value)")
        lblSliderValue.text = "Curr Value: \(mySlider.value)"
        
    }
    
    @IBAction func stepperChanged(_ sender: Any) {
        print("Stepper value changed! \(myStepper.value)")
    }
    
    
    @IBAction func segmentChanged(_ sender: Any) {
        print(mySegmentControl.selectedSegmentIndex)
        switch (mySegmentControl.selectedSegmentIndex) {
            case 0:
                print("The person picked an apple!")
                break
            case 1, 3:
                print("The person picked banana or donut!")
                break
            default:
                print("You picked something else!")
                break
        }
    }
    
    
    @IBAction func changeTextPressed(_ sender: Any) {
        myTextView.text = "iOS (formerly iPhone OS) is a mobile operating system created and developed by Apple Inc. exclusively for its hardware. It is the operating system that powers many of the company's mobile devices, including the iPhone and iPod Touch; the term also included the versions running on iPads until the name iPadOS was introduced with version 13 in 2019. It is the world's second-most widely installed mobile operating system, after Android."
            
    }
    
    
    @IBAction func changeImagePressed(_ sender: Any) {
        myImage.image = UIImage(named:"popsicle")
    }
    
    // MARK: End of file
}

