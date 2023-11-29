//  MARK: Exercise N°1

/// We want a list of 5 people.
/// We want to print a text that says "hello" to each one.
/// It should displays "Hello (my friend name)".
/// You should use:
/// - An Array
/// - A Function
/// - A For Loop
///
/// **Additional Exercise**:
/// Write a function that takes an *argument* (an `Int`) and use this argument to only print the friend at the argument position of the friend list

// MARK: Exercise N°1 - Solution

/// We create a list of 5 people, a list of 5 `String` as you can see.

var mySuperFriendList: [String] = [
    "Carlo",
    "Shox",
    "Valentina",
    "Samira",
    "Dino"
]

/// Then we print the content of the list because we just want to check if the content
/// is actually the correct content we just wrote.

print(mySuperFriendList)

/// We create then a function ``greetMyFriends`` that use a `for` loop on the list ``mySuperFriendList``.

func greetMyFriends() {

    /// This loop, just declare `friend` as a current variable at each iteration,
    /// to represent the specific friend we're greeting.

    for friend in mySuperFriendList {
        print("Hello \(friend)")
        print("Hello " + friend)
    }

}

/// Execution of the function

greetMyFriends()

// MARK: Exercise N°1 - Additional Exercise

/// Decomposition:
/// - Write a function that takes an argument
/// - (an `Int`) and use this argument to only print
/// - the friend at the argument position of the friend list

/// Reminder about the actual value of ``mySuperFriendList``:
///```
///var mySuperFriendList: [String] = [
///    "Carlo",
///    "Shox",
///    "Valentina",
///    "Samira",
///    "Dino"
///]
///```

/// Greet a friend specified by its `position` of type `Int` in the array ``mySuperFriendList``
/// - Parameter position: Index of the friend in the list
func printASpecificFriend( _ position: Int ) {
    print("Hello \(mySuperFriendList[position])")
}

/// Execution of the specific function

printASpecificFriend(2)
