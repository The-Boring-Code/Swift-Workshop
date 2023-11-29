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
