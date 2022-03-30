//
//  ActivityTableViewCell.swift
//  a3
//
//

import UIKit
import FirebaseFirestore
import FirebaseFirestoreSwift

class ActivityTableViewCell: UITableViewCell {
   
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    @IBOutlet weak var photoView: UIImageView!
    
    let db = Firestore.firestore()
    
    var id:String? = ""
    var city:String? = ""
    var photo:String? = ""
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBAction func addButtonPress(_ sender: Any) {
        
        let activityToAdd = Activity(activityName: nameLabel.text!, price: Double(priceLabel.text!)!, rating: Double(self.ratingLabel.text!)!, city: city!, photo: photo!)
        print(activityToAdd)
        do{
            try db.collection("carts").addDocument(from: activityToAdd)
            print("Activity saved!")
        }
        catch {
            print("Error when saving document")
            print(error)
        }
        
    }
    
    
}
