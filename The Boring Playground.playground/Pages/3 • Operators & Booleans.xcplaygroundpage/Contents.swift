/// Now we're changing completely the topic.
/// Let's take another `Array`. This time, an array of numbers, and specifically `Int`.

var myFriendsAge = [ 18, 24, 32, 16, 19, 17 ]

/// And then, let me introduce you to comparison operators.
/// You know when we say something is greather than or equal to.
/// We're talking about that right now.

/// **Comparison Operators**:
/// `<` : Is **Less** than ... ?
/// `>` : Is **Greater** than ... ?
/// `<=` : Is **Less** or **Equal** to ... ?
/// `>=` : Is **Greater** or **Equal** to ... ?

/// Here is a good example of use of those operators:

for age in myFriendsAge {

    /// This is called an `If` **statement**.
    if age < 18 {
        print("You are \(age). You are a minor")

        /// This is called an `Else If` **statement**. It is another if statement.
    } else if age < 20 {
        print("You are \(age). You are young.")

        /// This is an `Else` **statement**. It is just used when the other ones are not satisfied.
    } else {
        print("You are \(age). You are so old")
    }

    /// These 3 **statements** constitutes the base of the logic and conditions in (almost) every programming languages.
}

/// We can also decide to practice a bit functions as we just saw them.
/// Let's wrap everything inside a function.

/// Comment something about the age passed as an **argument**.
/// - Parameter age: Age we want a comment about.
func commentAboutYourAge(age: Int) {
    if age < 18 {
        print("You are \(age). You are a minor")
    } else if age < 20 {
        print("You are \(age). You are young.")
    } else {
        print("You are \(age). You are so old")
    }
}

/// Now we can even mix **arrays**, **loops** and **functions**.

for age in myFriendsAge {
    commentAboutYourAge(age: age)
}

/// These last 3 lines of code can be explained by:
/// For each `age` in the array ``myFriendsAge``, execute the function ``commentAboutYourAge`` by passing it the `age` as the named argument `age`.


/// Reminder about the actual value of ``mySuperFriendList``:
///```
var mySuperFriendList: [String] = [
    "Carlo",
    "Shox",
    "Valentina",
    "Samira",
    "Dino"
]
///```

/// It also exists 2 other comparison operators that can be called **Boolean Operators**:
/// `==` : Is Equal to ... ?
/// `!=` : Is Different from ... ?

/// This is another great example of use of both of these **operators**:

for friend in mySuperFriendList {
    if friend == "Carlo" {
        print("Hiiiiiiiii Carlo")
    } else if friend != "Shox" {
        print("Hi \(friend)")
    } else {
        print("duh.")
    }
}

/// But what does mean boolean?
/// Boolean is a means there's only 2 values.
/// In Computer Science, a boolean value (`Bool` type in Swift) is either ``true`` or ``false``.

var myBool: Bool = true
var myOtherBool = false

/// Cool thing with booleans, you can affect (assign) the result of a *boolean comparison* to a variable.

var comparison = myBool == myOtherBool

/// Here are some example of printing and assigning boolean values.

print(myBool == myOtherBool)
print(comparison)

var anotherComparison = myBool != myOtherBool

print(myBool != myOtherBool)
print(anotherComparison)

// MARK: Comparison with Numbers

print(1 < 2)
print(2 < 2)
print(2 <= 2)
print(3 >= 2)
print(3 != 2)
print("Carlo" != "Shox")

/// Until there, every lines contained a boolean comparison and the printing of a boolean value.
