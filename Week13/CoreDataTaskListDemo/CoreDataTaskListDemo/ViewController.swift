//
//  ViewController.swift
//  CoreDataTaskListDemo
//

import UIKit
import CoreData     // 1. needed to work with core data

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // MARK: Core Data
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    
    // MARK: Outlets
    @IBOutlet weak var myTableView: UITableView!
    
    // MARK: Table view data source
//    var taskList:[String] = ["Make the bed", "Do homework", "Walk the dog"]
    
    // Update to an array of Task objects
    var taskList:[Task] = []
    
    // MARK: Lifecycle functions
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myTableView.delegate = self
        myTableView.dataSource = self
        
        print("1. Calling viewDidLoad()")
        
    }

    override func viewWillAppear(_ animated: Bool) {
        print("2. Calling viewWillAppear()")
        
        // Query CoreData for any existing tasks
        // - If tasks exist, then use the list of tasks as your data source
        // for the table view
        
        // 1. Create a fetch request  (SELECT * FROM Task)
        let request:NSFetchRequest<Task> = Task.fetchRequest()
        
        // 2. Add any filters to the fetch request (WHERE clause)
        // predicate
        
        // 3. Initiate the fetch request
        do {
            let results:[Task] = try self.context.fetch(request)
            print("Number of results: \(results.count)")
            
            // 4. Handle the requests from CoreData
            // TODO: Replace the existing tableview data source with our resuilts from CoreData
            self.taskList = results
            
            // refresh the table view so it shows our data
            self.myTableView.reloadData()
            
        } catch {
            print("Error while fetching data from CoreData")
        }
        
       
    }
    override func viewDidAppear(_ animated: Bool) {
        print("3. Calling viewDidAppear()")
    }
    // MARK: Actions
    @IBAction func addButtonPressed(_ sender: Any) {
        // navigate to next page
        guard let nextScreen = storyboard?.instantiateViewController(identifier: "taskDetailsScreen") as? TaskDetailsViewController else {
            print("Cannot find next screen")
            return
        }
        
        nextScreen.isAddingNewTask = true
        
        self.navigationController?.pushViewController(nextScreen, animated:true)
    }
    
    // MARK: Table View Functions
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.taskList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.myTableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as UITableViewCell
        // cell.textLabel?.text = taskList[indexPath.row]
        cell.textLabel?.text = taskList[indexPath.row].name
        if (taskList[indexPath.row].priority == true) {
            cell.detailTextLabel?.text = "Priority: High"
            cell.detailTextLabel?.textColor = UIColor.magenta
        }
        else {
            cell.detailTextLabel?.text = "Priority: Low"
            cell.detailTextLabel?.textColor = UIColor.black
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        // navigate to next page
        guard let nextScreen = storyboard?.instantiateViewController(identifier: "taskDetailsScreen") as? TaskDetailsViewController else {
            print("Cannot find next screen")
            return
        }
        
        nextScreen.isAddingNewTask = false

       // let selectedTask:String = taskList[indexPath.row].name!
        let selectedTask:Task = taskList[indexPath.row]
        nextScreen.currTask = selectedTask
        
        self.navigationController?.pushViewController(nextScreen, animated:true)
    }
    
    // delete a row
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            
            // 1. get a reference to the Task object you want to delete
            let currTask = self.taskList[indexPath.row]        // of type Task
            
            // 2. Call the coreData function to delete an item (to be of type NSManagedObject)
            self.context.delete(currTask)           // DELETE FROM Task where ____
            
            // 3. Save the changes (commit the delete)
            do {
                try self.context.save()
                print("Successfully deleted from CoreData")
                
                // 4. Remove the object from the tableView data source array
                self.taskList.remove(at:indexPath.row)
                // 5. Remove the object from the tableview UI
                myTableView.deleteRows(at: [indexPath], with: .fade)
                
            }catch {
                print("Error while deleting data")
            }

           
    
        }
    }

}

