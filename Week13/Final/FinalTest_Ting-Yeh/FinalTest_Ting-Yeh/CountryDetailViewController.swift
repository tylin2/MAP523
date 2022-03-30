//
//  CountryDetailViewController.swift
//  FinalTest_Ting-Yeh
//
//

import UIKit
import CoreData

class CountryDetailViewController: UIViewController {
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    var currCountry:CountryInfo?
    
    @IBOutlet weak var txtCountryName: UILabel!
    @IBOutlet weak var txtCapital: UILabel!
    @IBOutlet weak var txtCode: UILabel!
    @IBOutlet weak var txtPopulation: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let currCountry = currCountry {
            print("Current Country is not nil")
            self.txtCountryName.text = currCountry.name
            self.txtCapital.text = currCountry.capital
            self.txtCode.text = currCountry.code
            self.txtPopulation.text = "\(currCountry.pop)"
            return
        }
    }
    

    @IBAction func addButtonPressed(_ sender: Any) {
        print("Trying to add the task to Core Data")
        let countryToSave = Country(context: self.context)
        countryToSave.name = currCountry?.name ?? ""
        countryToSave.population = currCountry?.pop ?? 0
        do{
            try self.context.save()
            print("Country saved")
        }
        catch {
            print("Error saving country to Core Data")
        }
        
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
