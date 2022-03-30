// CHECKLIST:
// - Create an outlet for the pickerview
// - Make a data source
// - Add picker view protocols to the class
// - Set up the delegate in viewDidLoad
// - Add mandatory pickerView functions
//  - numberOfComponents
//  - pickerView(:numRowsINComponent)
//  - pickerView(:titleForRowAt)

import UIKit
class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    // MARK: Outlet
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var resultsLabel: UILabel!
    
    // MARK: Data source
    let groceryItems = ["bread", "milk", "toiletpaper", "beans", "rice"]
    
    
    // MARK: ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.pickerView.delegate = self
        self.pickerView.dataSource = self
        
    }
    
    // MARK: PickerView Functions
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return groceryItems.count
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return groceryItems[row]
    }
    

    // MARK: Actions
    @IBAction func orderButtonPressed(_ sender: Any) {
        // 1. Retrieve what was selected in the picker
        let selectedIndex = self.pickerView.selectedRow(inComponent: 0)
        print("Selected index: \(selectedIndex), Item name: \(groceryItems[selectedIndex])")
        // 2. Display it in the ui
        resultsLabel.text = groceryItems[selectedIndex]
    }
    
}

