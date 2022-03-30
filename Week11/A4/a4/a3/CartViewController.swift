//
//  CartViewController.swift
//  a3
//

import UIKit
import FirebaseFirestore
import FirebaseFirestoreSwift

class CartViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var cartTableView: UITableView!
    
    let db = Firestore.firestore()
    
    var activities:[Activity]  = []
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return activities.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = cartTableView.dequeueReusableCell(withIdentifier: "cartCell", for: indexPath) as! CartTableViewCell
        
        let currAct = self.activities[indexPath.row]
        cell.nameLabel.text = currAct.activityName
        cell.priceLabel.text = "\(currAct.price)"
        cell.ratingLabel.text = "\(currAct.rating)"
        cell.cityLabel.text = currAct.city
        cell.photoView.image = UIImage(named: currAct.photo)
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete{
            
            let currAct = self.activities[indexPath.row]
            print("\(currAct.activityName) will be deleted. The id is \(currAct.id)")
            
            db.collection("carts").document(currAct.id!).delete{
                (error) in
                if let err = error {
                    print("Error when deleting document in cart")
                    print(err)
                }
                else {
                    print("Document deleted")
                    
                    self.activities.remove(at:indexPath.row)
                    self.cartTableView.deleteRows(at: [indexPath], with: .fade)
                    
                    print("Delete an activity: \(currAct)")
                }
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        cartTableView.dataSource = self
        cartTableView.delegate = self
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        activities.removeAll()
        
        db.collection("carts").getDocuments {
            (queryResults, error) in
            if let err = error {
                print("Error retrieving documents from FS in Carts")
                print(err)
            } else {
                for document in queryResults!.documents {
                    print(document.data())
                    do {
                        let actFromFS = try document.data(as: Activity.self)
                        self.activities.append(actFromFS!)
                    }
                    catch {
                        print("Error converting document to Activity object")
                        print(error)
                    }
                
                }
                print("Done adding activities from FS to app")
                print("Total of activities converted: \(self.activities.count)")
                print("Refreshing tableview with new data")
                self.cartTableView.reloadData()
            }
        }
    }
    
    @IBAction func removeAllPressed(_ sender: Any) {
        
        if((activities.count) != 0) {
            for i in 0..<activities.count {
                db.collection("carts").document(activities[i].id!).delete{
                    (error) in
                    if let err = error {
                        print("Error when deleting all documents in cart")
                        print(err)
                    }
                }
            }
            activities.removeAll()
        }
        
    
        self.viewDidAppear(true)
        
    }
    
    


}
