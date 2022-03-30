//
//  ViewController.swift
//  a3
//
//

import UIKit
import FirebaseFirestore
import FirebaseFirestoreSwift

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var citySegment: UISegmentedControl!
    @IBOutlet weak var actTableview: UITableView!
    
    let db = Firestore.firestore()
    
    var activities:[Activity]  = []
    var city:String = "Toronto"
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return activities.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = self.actTableview.dequeueReusableCell(withIdentifier: "ActivitiesCell", for: indexPath) as! ActivityTableViewCell
        
        let currAct = self.activities[indexPath.row]
        cell.nameLabel.text = currAct.activityName
        cell.priceLabel.text = "\(currAct.price)"
        cell.ratingLabel.text = "\(currAct.rating)"
        cell.city = currAct.city
        cell.id = currAct.id
        cell.photo = currAct.photo
        cell.photoView.image = UIImage(named: currAct.photo)
        
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.actTableview.delegate = self
        self.actTableview.dataSource = self
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        activities.removeAll()
        
        db.collection("activities").getDocuments {
            (queryResults, error) in
            if let err = error {
                print("Error retrieving documents from FS")
                print(err)
            } else {
                for document in queryResults!.documents {
                    print(document.data())
                    do {
                        let actFromFS = try document.data(as: Activity.self)
                        if(actFromFS?.city == self.city) {
                            self.activities.append(actFromFS!)
                        }
                    }
                    catch {
                        print("Error converting document to Activity object")
                        print(error)
                    }
                
                }
                print("Done adding activities from FS to app")
                print("Total of activities converted: \(self.activities.count)")
                print("Refreshing tableview with new data")
                self.actTableview.reloadData()
            }
        }
        
    }

    @IBAction func segmentChanged(_ sender: Any) {
        print("city: \(citySegment.selectedSegmentIndex)")
        switch(citySegment.selectedSegmentIndex) {
        case 0:
            self.city = "Toronto"
            break
        case 1:
            self.city = "London"
            break
        case 2:
            self.city = "Taipei"
            break
        case 3:
            self.city = "Sydney"
            break
        default:
            self.city = "Seattle"
            break
        }
        print(self.city)
        self.viewDidAppear(true)
        
    }
    
    
    
}

