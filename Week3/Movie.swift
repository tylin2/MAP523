
class Movie {
    // properties
    var title:String
    var director:String
    var genre:String
    var runningTime:Int
    
    // initializer
    init(title:String, director:String, genre:String, runningTime:Int) {
        self.title = title
        self.director = director
        self.genre = genre
        self.runningTime = runningTime
    }
    
    // initializer indicating that parameters names can be excluded
    // when calling the init() function
    
//    init(_ title:String, _ director:String, _ genre:String, _ runningTime:Int) {
//        self.title = title
//        self.director = director
//        self.genre = genre
//        self.runningTime = runningTime
//    }
    
    
    // methods
    func buyTicket() {
        print("Ticket purchased - from Movie.swift.")
        print("Date: Feb 3.")
    }
    
    func toString() -> String {
        return  "Title: \(self.title), Director: \(self.director)\nGenre: \(self.genre), Running Time: \(self.runningTime)"
    }
}
