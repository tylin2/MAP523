//
//  ViewController.swift
//  FinalTest_Ting-Yeh
//
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var countryTableView: UITableView!
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    var countryList:[CountryInfo] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        countryTableView.dataSource = self
        countryTableView.delegate = self
        
        let apiEndPoint = "https://restcountries.com/v2/all"
        
        guard let url = URL(string: apiEndPoint) else {
            print("Could not convert the string endpoint to an URL object")
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let err = error {
                print("Error occured whele fetching data from api")
                print(err)
                return
            }
            
            if let jsonData = data {
                print(jsonData)
                do {
                    let decoder = JSONDecoder()
                    let decodedItem:[CountryInfo] = try decoder.decode([CountryInfo].self, from: jsonData)
                    self.countryList = decodedItem
                    print("list.count after decoder: \(self.countryList.count)")
                    self.countryTableView.reloadData()
                }
                catch let error {
                    print("An error occured during JSON decoding")
                    print(error)
                }
                
            }
            
        }.resume()
    }
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return self.list.count
        return self.countryList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.countryTableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        let currCountry = self.countryList[indexPath.row]
        cell.textLabel!.text = currCountry.name
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let nextScreen = storyboard?.instantiateViewController(identifier: "detailView") as? CountryDetailViewController else {
            print("Cannot find next screen")
            return
        }
        let selectedCountry:CountryInfo = countryList[indexPath.row]
        print(selectedCountry)
        nextScreen.currCountry = selectedCountry
        
        show(nextScreen, sender: self)
    }


}

