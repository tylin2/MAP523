//
//  TaskDetailsViewController.swift
//  CoreDataTaskListDemo
//

import UIKit

import CoreData     // 1. needed to work with core data

class TaskDetailsViewController: UIViewController {

    // MARK: Core Data context variable
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    // MARK: Data from Screen 1
    //  var currTask:String?
    var currTask:Task?
    var isAddingNewTask:Bool = false

    // MARK: Outlets
    @IBOutlet weak var txtTaskName: UITextField!
    @IBOutlet weak var swPriority: UISwitch!
    @IBOutlet weak var btnSave: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // check if the Task is not nil?
        if let currTask = currTask {
            print("Current task is NOT nil")
            self.txtTaskName.text = currTask.name
            swPriority.isOn = currTask.priority
        }
        
        if (isAddingNewTask == true) {
            btnSave.setTitle("Add New Task", for:.normal)
        }
        else {
            btnSave.setTitle("Update Task", for:.normal)
        }
    }

    // MARK: Actions
    @IBAction func savePressed(sender:Any) {
        print("Button pressed")
        
        if (isAddingNewTask == true) {
            addTask()
        }
        else {
            updateTask()
        }
    }
    
    private func addTask() {
        //TODO
        print("Trying to add the task to Core Data")
        
        // 1. Create a object to represent the task you want to save to CoreData
        let taskToSave = Task(context: self.context)
        
        // 2. Set the properties of that object (setting the values of the columns)
        taskToSave.name = txtTaskName.text!
        taskToSave.priority = swPriority.isOn
        
        // 3. Persist / save the object to Core Data
        do  {
            try self.context.save()
            print("Task saved!")
            
            // clear the text boxes & reset the switch
            txtTaskName.text = ""
            swPriority.isOn = true
            
        }catch {
            print("Error saving task to Core Data")
        }
        
    }
    private func updateTask() {
        //TODO
        print("Trying to update existing task")
        
        // 1. Get a reference to the NSManagedObject Task that you want to update
        guard let taskToUpdate = self.currTask else {
            print("Current task is nil, cannot proceed")
            return
        }
        
        // if you are here, then task is not nil
        
        // 2. Update the properties of the task
        taskToUpdate.name = txtTaskName.text!
        taskToUpdate.priority = swPriority.isOn
        
        // 3. Commit your changes using self.context.save()
        do {
            try self.context.save()
            print("Update success!")
        }
        catch {
            print("Error while updating!")
        }
        // 4. Done!
    }
}

