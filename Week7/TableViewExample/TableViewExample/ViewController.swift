
import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    // MARK: Outlets    
    @IBOutlet weak var myTableView: UITableView!
    @IBOutlet weak var resultsLabel: UILabel!
    @IBOutlet weak var tbMovieName: UITextField!
    
    
    // MARK: Data Source For TableView
    var moviesList = ["Shangchi and the Ten Rings", "Spiderman: Far From Home", "Dune", "Squid Game", "007: No Time to Die"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // hook up your data source and delegate to your tableview
        myTableView.dataSource = self
        myTableView.delegate = self
    }

    
    // MARK: Action
    
    @IBAction func btnAddPressed(_ sender: Any) {
        // 1. Get the content the user entered in the textbox
        let movieToAdd = tbMovieName.text!
        
        // 2. Add that item to the datasource (moviesList)
        moviesList.append(movieToAdd)
        print(moviesList)
        // 3. Update the user interface!!!!
        // 3a. Update the tableview
        myTableView.reloadData()
        
        // 3b. Clear the textbox and wait for new imput
        tbMovieName.text = ""
    }
    
    
    
    // MARK: Mandatory tableview functions
    
    // Specifies the number of items per section (number of rows in the section)
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // dyanamically calculated => It depends on how many items you have in your data source
        return moviesList.count
    }
    
    // Controls what DATA is displayed in each row of the tableview
    // This row is called every time there is a new item to draw on the tableview
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // boilerplate code
        let cell = myTableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        
        // indexPath.row = the position of the row in the tableview
        // that is currently being rendered on the screen
        print("Drawing row #\(indexPath.row)")
        // Add whatever text / content you want to display in the row
        //cell.textLabel!.text = "Hello World!"
        cell.textLabel!.text = moviesList[indexPath.row]
        
        return cell
    }
    
    // how many sections do you want in your tableview
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // indexPath will return us the row that is currently being clicked on
        print("You clicked on a row: \(indexPath.row)")
        print("The item selected was: \(moviesList[indexPath.row])")
        // when you click on a row, navigate to another scren
        // when you click on a row, change something on the screen
        resultsLabel.text = moviesList[indexPath.row]
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        // detecting that person wants to delete
        if (editingStyle == UITableViewCell.EditingStyle.delete) {
            print("Person wants to delete the row: \(indexPath.row)")
            // to actually REMOVE the item from the table view
            
            // You need to know the position of which row was selected
            
            // 1. Remove the selected item from the data source (array)
            moviesList.remove(at: indexPath.row)
            print("Updated list of movies: \(moviesList)")
            
            // 2. Remove the selected item from the UI
            myTableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.automatic)
            
        }
    }
    
}




