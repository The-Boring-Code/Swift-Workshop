// Okay, talking about restaurant and friends, let's consider one of your friends.
/// His name is *Carlo*, let's store that in a variable.

var myFriendName: String = "Carlo"

/// But you have many more friends, so let's consider another friend name *Luigi*.

var myOtherFriendName: String = "Luigi"

/// What we can do now, is maybe gather all of our friends. For practical reasons you may want to store multiple names inside a variable.
/// You can do that with **arrays** (list, collection, group of things) and the `[]` notation.

var myFriends = [ "Carlo", "Luigi" ]

/// You can also create list of variables:

var myFriendList = [ myFriendName, myOtherFriendName ]

/// Let's print these variables:

print(myFriends)
print(myFriendList)

/// See how it is the same ?

/// If you want to get your first friend name in the list, you can do it that way:

print(myFriends[0])

/// `0` is the first **index** (position) in the array. Don't think about it too much, it works like that with most programming language.

print(myFriends[0])
print(myFriends[1])

/// You should now see Carlo and Luigi displayed in the console.
/// But printing every names manually is a bit of a hassle.
/// So let's write a *function*, you remember what is a *function* ?
/// >>> A *function* is a group of line of code you want to be able to execute multiple time without writing every lines all the time.
/// >>> A *function* can do one single thing or many ones.

func printMyFriendsName() {
    print(myFriends[0])
    print(myFriends[1])
}

/// You have to use `func` keyword to declare a function.
/// Then you write the name of the function, here it is `printMyFriendsName`
/// After that you put `()` and start a block of code with `{` and end it with `}`
/// Between`{` and `}` you can write all the code you want.
/// Here, we just copied the 2 print functions that display our friends names.

printMyFriendsName()

/// Now you see again your friends names.

/// But there's a way to do it more easily, because if you have 24 friends, it will be tiring to write all the print.
/// Let me show you something new, **loops**.
/// **Loops** do what you tell them to do as many time as you tell them.
/// Here, we will be looping over our friends list:

func printNamesWithLoop() {

    /// As you can see we use `for` keyword to create the loop.
    /// We then use `friend` to refer to the specific friend we want to display the name of.
    /// `in` means that we **iterate** over `myFriends` list.
    /// **Iterate** means we execute the same code for each friend inside the list `myFriends`.
    /// Eventually, we use again `{` and `}` to create a new block of code.

    for friend in myFriends {
        print(friend)
    }
}

/// After that you will see that it works exactly like the other one.

print("printing with loop")
printNamesWithLoop()
