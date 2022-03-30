// Movie

// declaring Movie objects with no initializer argument labels
//let m1 = Movie("Parasite", "Bong Joon-ho", "Suspense", 120)
//
//let m2 = Movie("Avengers:End Game", "Anthony Russo & Joe Russo",  "Action",180)


// declaring the Movie class with the initializer argument labels
let m1 = Movie(title:"Parasite", director:"Bong Joon-ho", genre:"Suspense", runningTime:120)

let m2 = Movie(title:"Avengers:End Game", director: "Anthony Russo & Joe Russo", genre:"Action",runningTime:180)


print(m1.toString())
print(m2.toString())

let m3 = InPersonScreening(t:"Toy Story", dir:"Randy Newman", g:"Family", rt:90)
print(m3.toString())
print(m3.address)
print(m3.maxCapacity)

//m3.buyTicket()
m3.buyTicket(numTickets: 1)


//let m4 = OnlineScreening(t: "Love in the Time of Swift", dir: "Peter Smith", g: "Romance", rt: 60, url: "http://www.someurl.com/KSDFIe", streamingPlatform: "Netflix")
//print(m4.toString())
//
//m4.buyTicket()
