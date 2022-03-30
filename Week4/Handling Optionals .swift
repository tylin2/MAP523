// optionals
// passwords must be minimum 6 characters long
// var pass:String? = nil          // password
// pass = "abc22"          // password = abc22 (string, not null)


// force unwrapping
// trust -> can be broken           // pass = nil
//if (pass!.count < 6) {
//    print("Validation error: Your password must be minimum 6 characters long")
//}

// if let
//// creates a temporary variable
//var pass:String? = "234"
//var user:String? = "psmith"
//var email:String? = nil
//
//if let username = user, let password = pass, let email = email {
//    // both user and pass are != nil, then we continue
//    print("Username and password are not nil")
//    print(password)
//    print(username)
//    print(email)
//}
//
//print("done")


// it is checking if pass is null
// if yes, then skip all the code in the if-statement
// if no, assign the value stored in pass to a temporary variable
// called password
//if let password = pass {
//    print(password)
//    print("Password is not null, doing a validation check now")
//    if (password.count < 6) {
//        print("Sorry, your passsword must be min 6 character")
//    }
//    else {
//        print("Your password is just fine!")
//    }
//}

/// print("done")



// guard let only works inside functions

//func login(u:String?, p:String?) {
//    if let username = u, let password = p {
//        print("WE got a username and password!")
//        print("doing something with that data")
//        print(username)
//        print(password)
//    }
//    print("done")
//}


func login(u:String?, p:String?) {
    guard let username = u, let password = p else {
        // what code we should execute if u is NIL
        print("You are missing a username!")
        print("your username is nil")
        return
    }
    // whatever code we should execute if u is NOT Nill
    print("WE got a username and password!")
    print("doing something with that data")
    print(username)
    print(password)
    print("done")
}


 login(u:"psmith", p: "234")

// nil coaelasing
// much safer alternative to forced wrapping
// - if a value is nil, then assign it a default value

let y:Int? = nil
let z = y ?? 9999             // ?? nil coaelascing operator

// if y == nil, then z = 0
// otherwise, z = y

print(z)







