
import UIKit

class CounterViewController: UIViewController {

    // this function runs when the screen is loaded
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print("My counter screen is loading!")
    }
    

    // IOS auto creates this function called
    // buttonPressed
    // This function will run anytime the person
    // presses the CLICK ME BUTTON
    @IBAction func buttonPressed(_ sender: Any) {
        print("Button was pressed!")
    }
    
    // web
    // <button id="blah">CLICK ME </button>
    // js
    // document.querySelector("#blah")
    //      .addEventListener("click", abc)
    //
    // func abc() {
    //      console.log("HELLO WORLD")
    // }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
