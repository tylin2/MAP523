import Foundation
class Movie {
    // properties
    let name:String
    let genre:String
    let runningTime:Int
    let year:Int
    
    // initializer
    init(name:String, genre:String, runningTime:Int, releaseYear:Int) {
        self.name = name
        self.genre = genre
        self.runningTime = runningTime
        self.year = releaseYear
    }
}
