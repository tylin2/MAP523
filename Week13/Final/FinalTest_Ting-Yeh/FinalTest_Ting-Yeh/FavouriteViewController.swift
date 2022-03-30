//
//  FavouriteViewController.swift
//  FinalTest_Ting-Yeh
//
//

import UIKit
import CoreData

class FavouriteViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var favouriteTableView: UITableView!
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    var favouriteList:[Country] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        favouriteTableView.dataSource = self
        favouriteTableView.delegate = self
       
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        let request:NSFetchRequest<Country> = Country.fetchRequest()
        
        do {
            let results:[Country] = try self.context.fetch(request)
            print("Number of results: \(results.count)")
            self.favouriteList = results
            self.favouriteTableView.reloadData()
        }
        catch {
            print("Error while fetching data from CoreData")
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.favouriteList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.favouriteTableView.dequeueReusableCell(withIdentifier: "favouriteCell", for: indexPath) as UITableViewCell
        
        cell.textLabel?.text = favouriteList[indexPath.row].name
        cell.detailTextLabel?.text = ("\(favouriteList[indexPath.row].population)")
        if(favouriteList[indexPath.row].population > 38005238) {
            cell.contentView.backgroundColor = UIColor.systemGray3
        }
        
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let currCountry = self.favouriteList[indexPath.row]
            self.context.delete(currCountry)
            do {
                try self.context.save()
                print("Successfully Deleted from CoreData")
                self.favouriteList.remove(at: indexPath.row)
                favouriteTableView.deleteRows(at: [indexPath], with: .fade)
            }
            catch {
                print("Error while deleting data")
            }
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
