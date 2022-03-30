
class OnlineScreening:Movie {
    
    var url:String;
    var streamingPlatform:String
    
    init(t:String, dir:String, g:String, rt:Int, url:String, streamingPlatform:String) {
        self.url = url
        self.streamingPlatform = streamingPlatform
        // call the superclass' initializer
        super.init(title: t, director: dir, genre: g, runningTime: rt)
    }
    
    
    override func toString() -> String {
        return  "Title: \(self.title), Director: \(self.director), Genre: \(self.genre), Running Time: \(self.runningTime), Streaming Platform: \(self.streamingPlatform), URL: \(self.url)"
    }
    
    override func buyTicket() {
        // when the person buys the ticket, show a confirmation message and
        // send them the link to the movie
        super.buyTicket()        
        print("The link to your movie is: \(self.url)")
        print("Enjoy the show!")
    }
}
