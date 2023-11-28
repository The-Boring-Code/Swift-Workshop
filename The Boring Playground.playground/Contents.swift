/// # What is a variable ?
///
/// It all starts with the keyword `var`
/// For example, I'm creating a new variable named `myVariable` that contains `1` as a value.
/// Yes, because variables are places where you store **data**, **things** in the computer memory.
/// You use `=` to store a value inside a variable.
/// Creating a variable is called a **variable declaration**, we **declare a variable**.
/// When we give it a value, we **affect** it a value, it's called **variable initialisation**.

var myVariable = 1

/// Variables have also **types**
/// For example, `myVariable` is a variable of **type** (see it as a kind of something) `Int`.
/// `Int` is a type that refers to Integer, a kind of numbers.
/// We could also declare a variable and specify its **type** by writing it that way:

var anotherVariable: Int = 1

/// You use `:` to specify the *type* of variable right after the name.

/// But there are other types of variables, like **constant**.
/// Constants can not change. Never. You can declare them, the same way you do for classic variables but using `let` instead of `var`.

let constantVariable: Int = 2

/// Usually developers prefer to use uppercase for constants names:

let UNCHANGEABLE_VARIABLE: Int = 3

/// So, okay that's cool. Now you can declare and initialize variables and constants. But we only saw numbers?
/// # Can we store other things than numbers ?
/// Yes, of course.
/// There are a lot of different kind of things you can store, like characters and texts, numbers, list of numbers or booleans, etc.
/// For example, what is a boolean? A boolean is either **true** or **false**. There's no in-between for booleans.
/// Declaring a boolean goes like this:

var myBoolean: Bool = true
var myOtherBoolean = false

/// Again you see that you can choose to specify the *type* or not.
/// `myBoolean` is *true*.
/// `myOtherBoolean` is *false*.

/// Now let's store some text. You have to use a double-quotes to create some text:

var textVariable = "Hello Boring Code Workshop people 👋"

/// The actual *type* of the `textVariable` is `String`.
/// So you can declare a `String` variable that way:

var anotherText: String = "This is so boring."

/// Now we covered the really basic stuff of programming.
/// Let's do something more complex.
/// First, we want to know the value of a variable at a specific time. we use `print()` **function**.
/// A *function* is a group of line of code you want to be able to execute multiple time without writing every lines all the time.
/// A *function* can do one single thing or many ones.
/// `print()` just displays the content you tell it to display.
/// To be able to see what `print()` displays you need to click on **􁒡** on the bottom right corner of this window.
/// This new part of the window is called the **console**.
/// Now we'll print the content of `anotherText`

print(anotherText)

/// You should see `This is so boring.` inside the console.

/// A cool thing with variable is that they can change.
/// Let's change `anotherText` value.

anotherText = "Good Bye 👋"

/// We can now check that the value has changed.

print(anotherText)

/// You should see a second line in the console displaying `Good Bye 👋`

/// What about changing some number variables?
/// Let's declare one and change its value:

var boringNumber = 0

print(boringNumber)

boringNumber = 42

print(boringNumber)

/// You should see 2 new lines in the console. The first one is `0` and the second one is `42`.
/// Another cool (if you like maths) thing with variables is that you can do math operations:

boringNumber = 42 * 2
print(boringNumber)

/// Notice how the value changes.
/// Now let's do some more complex stuff. You can do operations with different variables.

var result = boringNumber * 2
print(result)

/// But you can also divide, substract or add to a number:

var newResult = result + 2
print(newResult)

/// You can do all the operations inside the print for example:

print(newResult / 4)
print(newResult - 128)

/// If you want to change a variable based on a previous value of the same variable, you can also do it:

newResult = newResult / 4

print(newResult)

/// What if your result has digits and decimals? It becomes a `Float` or `Double` *type* of variable.

var myDouble: Double = 8.0
var myOtherDouble = 8.0
var aFloat: Float = 16.0

/// You can do the same operations on them.

/// Now imagine you have a spending to split between your friends after a restaurant.
/// Let say that you spent 128 euros at the restaurant and you were eight people.

var numberOfPeople = 8

var totalSpending = 128

var individualSpending = totalSpending / numberOfPeople

print(individualSpending)

/// But it's not really easy to read.
/// In Swift you can insert variable values inside text.
/// Let's see how to do that.

print("We were \(numberOfPeople) and we spent \(totalSpending)€ in total.")
print("So now, each of us spent \(individualSpending)€.")

/// You use `\()` to do it.
/// You can also store that in a variable for example:

var ourRestaurantSpending: String = "We were \(numberOfPeople) and we spent \(totalSpending)€ in total."
var individualText: String = "So now, each of us spent \(individualSpending)€."

print(ourRestaurantSpending)
print(individualText)

/// See how it is the same in the console?

/// Okay, talking about restaurant and friends, let's consider one of your friends.
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

/// You have to use `func` keywork to declare a function.
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
///
printASpecificFriend(2)


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

    /// This is called an `Else If` **statement**.
    } else if age < 20 {
        print("You are \(age). You are young.")

    /// This is an `Else` **statement**.
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
///var mySuperFriendList: [String] = [
///    "Carlo",
///    "Shox",
///    "Valentina",
///    "Samira",
///    "Dino"
///]
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

/// # Now, we will completely change the topic and the level of difficulty.

/// Let's imagine we want to save multiple informations about a person like "Carlo".
/// We can save everything in as many variables as we need, for example:

var carloName: String = "Carlo"
var carloAge: Int = 19
var carloHeight: Int = 180

/// But if you start creating 3 variables for every person, and that you need to do it manually,
/// it will quickly get tiresome. And you can't really save that into an array.

/// But thankfully, programming languages and especially Swift today, include a set of things and types
/// that enables to save all these kinds of information in one specific place and being able to move them all easily.

/// The first thing we will talk about are ``class`` (classes).
/// Classes are a way to handle a various set of data related to a specific topic.
/// The class is a specific type of value that enables you to create other type of value.
/// It's like declaring a function, but with more stuff inside it.
/// Right now, we will create a class that defines a person, but into the code:

/// We start by declaring the class creation by using ``class`` keywork followed by the actual name of the new class `Person`.
/// Then we use `{` and `}` to create a new block of code.

class Person {
    
    /// Then we use almost the same variable as we declared specifically for Carlo earlier

    var name: String
    var age: Int
    var height: Int

    /// But here comes the difference with the 3 easy variables.
    /// Classes need `initializers` to be created.
    /// The thing we just did is just *declaring* a class named Person.
    /// But to create a person, Carlo for example, with every information we know about it,
    /// we have to use the initializer to create a new person with the provided information.
    /// An initializer is basically a function that needs to be defined inside classes.
    /// Initializers **HAVE TO** define the value for every variables in the class declaration.

    init(name: String, age: Int, height: Int) {

        /// ``self`` refers to the person we're initializing right now.
        /// It is often useful and preferable to use ``self`` to refer to properties of a class.
        /// Here, we **NEED** to use it to distinguish the ``name`` property of `Person` from the `name` argument from the initializer.

        self.name = name
        self.age = age
        self.height = height
    }

    /// One another cool thing of classes:
    /// You can specify functions that only this class can use.
    /// For example, we wrote some functions to greet every persons contained in an array earlier,
    /// Here we can just write a function that will greet this person specifically:

    func greet() {
        print("Hello \(name)!")
    }

    /// But we can many more things and complex functions!

    func greetSomeone(anotherPersonName: String) {
        print("Hello \(anotherPersonName)! My name is \(name)")
    }

}

/// We now have a new *type* called Person. And we can use it normally as any other type.
/// To initialize a new person, you just have to "call" the Person initializer function `.init(...)`.
/// This looks like this:

let carlo: Person = Person.init(name: "Carlo", age: 19, height: 180)

/// By using the dot `.` between ``Person`` and ``init``, we're telling Swift to access the ``init`` function inside the ``Person`` *class*.
/// But in reality, what we just wrote is the complex version that nobody is actually using.
/// If you don't want to look weird to your peer developers, just use:

let antonio: Person = Person(name: "Antonio", age: 22, height: 170)

/// This looks better, doesn't it?

/// Now, let's do a quick vocabulary update:
/// Variables we declared inside the *class*, like `name`, `age`, `height` are called **attributes** or **property** in Swift.
/// Functions we declared inside the *class*, like `greet`, `greetSomeone` are called **methods**.
/// ``carlo`` and ``antonio`` are **instances** of the *class* ``Person``.

/// As any variable in this playground, `name`, `age` and, `height` are variable you can access directly and print or use in your functions.
/// Remember that you have to use the dot `.` notation to access data stored inside a class.

print(carlo.name)
print(carlo.age)
print(carlo.height)

/// And, the main goal of everything we just did, was to be able to manage multiple people and their information
/// with as less struggle as possible, and you'll see that it's now become easier:

/// Let's create a list (an array) of people:
/// Don't forget about `[` and `]` to create array and specify the type of a variable.
/// Here, the type `[Person]` defines a list (an array) of instance of the class `Person`.

var presenters: [Person] = [
    carlo,
    antonio,
    Person(name: "Gigi", age: 24, height: 175)
]

/// You can see that you can create class instances at almost any time in the code.

/// Since we now have an array, we can do some array stuff on it. Let's start with a *loop*.

for presenter in presenters {
    presenter.greet()
}

/// This code should be self-explanatory.
/// For each `presenter` of the list `presenters`, execute the **method** ``greet`` of the considered presenter instance.

// MARK: Exercise N°2
/// Let's try with something else:
/// Try to create a new class representing an animal, with its species, and some information and some interesting method.

// MARK: Exercise N°2 - Solution

/// Now if you remember, attributes are just variables stored inside the class.
/// But what is interesting about variables?
/// You can change their values.

print(carlo.age)

carlo.age = 25

print(carlo.age)

/// This is made possible because we declared `Person`'s age as a `var` variable.
/// If you want you can also set it with `let` and see that happens.

/// Now that we have discovered ``class``. Let's dig into something really close yet really different.
/// Let's talk about ``struct``.
/// Structs are a cousin of class, with almost the same way of being created and used but some technical differences.
/// We'll go over technical differences later.

/// To create a ``struct``, it's really similar to a ``class``:

struct PersonStruct {
    var name: String
    var age: Int
    var height: Int
}

/// We just created our first ``struct``. Be proud of yourselves.
/// And you can already see differences.
/// **Where is the ** `init` initializer function? You don't need it with ``struct`` (unless you're doing complicated things).

/// In ``struct``, a default initializer function will be provided and it looks really like the one we use for the previous class `Person`.
/// So we don't need to write it and it will work the same way as if we wrote it.

/// ```
/// init(name: String, age: Int, height: Int) {
///     self.name = name
///     self.age = age
///     self.height = height
/// }
/// ```
















/// ## In Swift, both ``struct`` and ``class`` are used to define custom data types, but they have some key differences in terms of behavior and characteristics.
/// Here's a brief overview:

/// ## Structs:
/// 1. Value Type: Structs are value types. When a struct instance is assigned to another variable, or passed as a parameter, a copy of the instance is made. Each instance is independent of others.
/// 2. Stack Memory: Struct instances are usually stored in the stack memory, making them more memory-efficient for small data structures.
/// 3. Immutability: By default, the properties of a struct are immutable. To modify a property, you need to use the 'mutating' keyword on the method.
/// 4. No Inheritance: Structs do not support inheritance. You cannot inherit from another struct.

/// ## Classes:
/// 1. Reference Type: Classes are reference types. When a class instance is assigned to another variable, or passed as a parameter, both variables point to the same instance in memory.
/// 2. Heap Memory: Class instances are usually stored in the heap memory, which provides more flexibility but may be less memory-efficient for small instances.
/// 3. Mutability: Properties of a class are mutable by default. You can modify properties without using the mutating keyword.
/// 4. Inheritance: Classes support inheritance. You can create a new class that inherits from another class.
