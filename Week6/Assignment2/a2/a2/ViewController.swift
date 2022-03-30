//
//  ViewController.swift
//  a2
//
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var myTableView: UITableView!
    
    var pizzaList:[pizza] = [pizza(n: "Spicy Pulled Pork Pizza", d: "Slow-roasted pulled pork with a spacial spicy and smoky BBQ pizza sauce.", s: 15.5, m: 17.5, l: 21.5, p:"Spicy-Pulled-Pork-Pizza"),pizza(n: "The Original", d: "Prpperoni, cheese, green onions. Served with extra tomato sauce and three types of cheese.", s: 15.5, m: 17.5, l: 21.5, p:"The_Original"),pizza(n: "Vegetarian Fiesta", d: "Roasted red peppers, caramelized onions, sundried organic tomatoes, feta, and spinach, on a thin crust with pesto sauce.", s: 15.5, m: 17.5, l: 21.5,p:"Vegetarian_Fiesta_Pizza")]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pizzaList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as!
        PizzaTableViewCell
        
        print("Drawing row \(indexPath.row)")
        cell.pizzaNameLabel.text = pizzaList[indexPath.row].name
        cell.descriptionLabel.text = pizzaList[indexPath.row].description
        cell.priceLabel.text = "S: \(pizzaList[indexPath.row].priceS)    M: \(pizzaList[indexPath.row].priceM)    L: \(pizzaList[indexPath.row].priceL)"
        cell.photo.image = UIImage (imageLiteralResourceName: "\(pizzaList[indexPath.row].photoName)")
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myTableView.delegate = self
        myTableView.dataSource = self
    }


}

