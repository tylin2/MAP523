import Foundation

let s1 = Student(i: "771522", f: "Laura", l: "Diaz", t: "u")
let s2 = Student(i: "779988", f: "Nelle", t: "p")

let c1 = Course()
c1.couTitle = "Intro to Biology"
c1.couGrade = 75

let c2 = Course()
c2.couTitle = "English in Pop Culture"
c2.couGrade = 49

let c3 = Course()
c3.couTitle = "Algebra"
c3.couGrade = 94

let c4 = Course()
c4.couTitle = "Statistics"
c4.couGrade = 49

let c5 = Course()
c5.couTitle = "Creative Problem Solving"
c5.couGrade = 51

print("****Create and show a transcript for the undergraduate studnet.**** \n")

let t1 = undergraduateTranscript(s: s1)
t1.addCourse(co: c3)
t1.addCourse(co: c2)
t1.addCourse(co: c1)

t1.show()

print("\n****Create and show a transcript for the postgraduate studnet.**** \n")

let t2 = postgraduateTranscript(s: s2)
t2.addCourse(co: c4)
t2.addCourse(co: c5)

t2.show()
