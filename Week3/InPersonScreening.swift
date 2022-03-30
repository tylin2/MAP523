
class InPersonScreening: Movie{
    // properties
    var maxCapacity:Int
    var address:String
    
    init(t:String, dir:String, g:String, rt:Int) {
        self.maxCapacity = 10
        self.address = "255 Main Street"
        super.init(title: t, director: dir, genre: g, runningTime: rt)
    }
    
    // override the parent's toString
    override func toString() -> String {
        return  "Title: \(self.title), Director: \(self.director), Genre: \(self.genre), Running Time: \(self.runningTime), Address: \(self.address), Max Capacity: \(self.maxCapacity)"
    }
    
    // override
//    override func buyTicket() {
//        print("Your movie will be at \(self.address)")
//    }
    
    
    // overloaded function
    func buyTicket(numTickets:Int) {
        if (numTickets > self.maxCapacity) {
            print("Sorry, we don't have that number available")
            print("We only have \(self.maxCapacity) seats available.")
        }
        else {
            print("Tickets available!")
            super.buyTicket()
        }
    }
    
}
