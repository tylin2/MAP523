//
//  OrderViewController.swift
//  a2
//
//

import UIKit

class OrderViewController: UIViewController,UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var picker: UIPickerView!
    @IBOutlet weak var mySegment: UISegmentedControl!
    @IBOutlet weak var myStepper: UIStepper!
    @IBOutlet weak var myQuantityCounter: UILabel!
    @IBOutlet weak var discriptionLable: UILabel!
    @IBOutlet weak var receipt: UILabel!
    
    var pizzaList:[pizza] = [pizza(n: "Spicy Pulled Pork Pizza", d: "Slow-roasted pulled pork with a spacial spicy and smoky BBQ pizza sauce.", s: 15.5, m: 17.5, l: 21.5, p:"Spicy-Pulled-Pork-Pizza"),pizza(n: "The Original", d: "Prpperoni, cheese, green onions. Served with extra tomato sauce and three types of cheese.", s: 15.5, m: 17.5, l: 21.5, p:"The_Original"),pizza(n: "Vegetarian Fiesta", d: "Roasted red peppers, caramelized onions, sundried organic tomatoes, feta, and spinach, on a thin crust with pesto sauce.", s: 15.5, m: 17.5, l: 21.5,p:"Vegetarian_Fiesta_Pizza")]
    var size: String = ""
    var quantity: Int = 0
    var price: Float = 0
    var o1: Order = Order()
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pizzaList.count
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pizzaList[row].name
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print("picker is selected \(pizzaList[row].name)")
        discriptionLable.text = "\(pizzaList[row].description)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.picker.delegate = self
        self.picker.dataSource = self
        picker.selectRow(1, inComponent: 0, animated: true)
        discriptionLable.text = pizzaList[1].description
        mySegment.selectedSegmentIndex = 1
        myStepper.value = 1
        myQuantityCounter.text = "1"
        receipt.text = ""
        o1 = Order()
        
    }
    
    @IBAction func segmentChanged(_ sender: Any) {
        print("Segment changed to \(mySegment.selectedSegmentIndex).")
        switch (mySegment.selectedSegmentIndex) {
        case 0:
            size = "Small"
            price = pizzaList[picker.selectedRow(inComponent: 0)].priceS
            break
        case 1:
            size = "Medium"
            price = pizzaList[picker.selectedRow(inComponent: 0)].priceM
            break
        default:
            size = "Large"
            price = pizzaList[picker.selectedRow(inComponent: 0)].priceL
            break
        }
        print("\(size) & \(price)")
    }
    
    @IBAction func stepperChanged(_ sender: Any) {
        print("stepper changed to \(myStepper.value)")
        myQuantityCounter.text = "\(Int(myStepper.value))"
        quantity = Int(myStepper.value)
    }
    
    @IBAction func orderButtonPressed(_ sender: Any) {
        let box = UIAlertController(title: "Place Order", message: "Are you sure you are ready to place this order?", preferredStyle: .alert)
        box.addAction(UIAlertAction(title: "OK", style: .default, handler: { [self]
            action in
            o1.set(n: self.pizzaList[self.picker.selectedRow(inComponent: 0)].name, s: self.size, p: self.price, q: self.quantity)
            receipt.text = "Your Receipt \n Name of Pizza: \(o1.name) \n Size: \(o1.size) \n Quantity: \(o1.quantity) \n Subtotal: \(o1.subtotal) \n Tax: \(o1.tax) \n Final total: \(o1.finalTotal)"
        }
        ))
        box.addAction(UIAlertAction(title: "CANCEL", style: .cancel, handler: nil))
        
        self.present(box,animated: true)
    }
    
    @IBAction func cancelButtonPressed(_ sender: Any) {
        viewDidLoad()
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
