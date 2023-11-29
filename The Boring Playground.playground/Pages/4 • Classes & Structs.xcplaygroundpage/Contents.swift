/// Let's imagine we want to save multiple informations about a person like "Carlo".
/// We can save everything in as many variables as we need, for example:

var carloName: String = "Carlo"
var carloAge: Int = 19
var carloHeight: Int = 180

var shoxName: String = "Shox"
var shoxAge: Int = 17
var shoxHeight: Int = 180

/// But if you start creating 3 variables for every person, and that you need to do it manually,
/// it will quickly become tiresome. And you can't really save that into an array.

/// But thankfully, programming languages and especially Swift today, include a set of things and types that enables to save all these kinds of information in one specific place and being able to move them all easily.

/// The first thing we will talk about are ``class`` (classes).
/// Classes are a way to handle a various set of data related to a specific topic.
/// The class is a specific type of value that enables you to create other types of value.
/// It's like declaring a function, but with more stuff inside.
/// Right now, we will create a class that defines a person, but into the code:

/// We start by *declaring* the class by using ``class`` keyword followed by the actual name of the new class `Person`.
/// Then we use `{` and `}` to create a new block of code.

class Person {

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
        print("Hello \(self.name)")
    }

    /// But we can many more things and complex functions!

    func greetSomeone(anotherPersonName: String) {
        print("Hello \(anotherPersonName)! My name is \(name)")
    }

}

/// We now have a new *type* called `Person`. And we can use it normally as any other type.
/// To initialize a new person, you just have to *call* the `Person` initializer function `.init(...)`.
/// This looks like this:

let carlo: Person = Person.init(name: "Carlo", age: 19, height: 180)

/// By using the dot `.` between ``Person`` and ``init``, we're telling Swift to access the ``init`` function inside the ``Person`` *class*.
/// But in reality, what we just wrote is the complex version that nobody is actually using.
/// If you don't want to look weird to your peer developers, just use:

let shox: Person = Person(name: "Shox", age: 17, height: 180)

/// This looks better, doesn't it?
/// You can use 2 other ways to create a person from a class. These ways are:

let antonio = Person(name: "Antonio", age: 22, height: 170)

/// We just omitted to specify the type in this one as you can see.
/// There's another way to do it:

let gigi: Person = .init(name: "Gigi", age: 24, height: 175)


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
/// There are other ways to create loops, and the next one is a new one:

for position in 0..<presenters.count {
    var presenter = presenters[position]
    presenter.greet()
}

/// This means: Starting from 0 until the number of items in the presenters list, store the presenter located at the position in list and then call the method ``greet`` of the presenter (which is an instance of ``Person``)

/// Now if you remember, attributes are just variables stored inside the class.
/// But what is interesting about variables?
/// You can change their values.

print(carlo.age)

carlo.age = 25

print(carlo.age)

/// If you still have in mind how we defined ``carlo``. We use the `let` keyword to declare the variable.
/// But as you can see, we're still able to change the value of `age` attribute of `carlo`.
/// This is made possible because we declared `Person` as a `class`.
/// So, unless we specify that the specific attribute should be a constant, we will be able to change its value.
/// This happens because `class` are reference-based entities in Swift.
/// If you want to have this constant-like behavior you can use another sort of entity of the Swift programming language.

/// Therefore, let's dig into something really close yet really different.
/// Let's talk about ``struct``.
/// Structs are a cousin of classes, with almost the same way of being created and used but some with the aforementionned.

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

/// You can create the same kind of variable that we did for the first carlo variable but with `struct`.

let carloStruct: PersonStruct = PersonStruct(name: "Carlo", age: 19, height: 180)

/// And you can use the same other ways to declare a new variable of type `PersonStruct` as we did for `Person` class.

let shoxStruct = PersonStruct(name: "Shox", age: 17, height: 180)

let antonioStruct: PersonStruct = .init(name: "Shox", age: 17, height: 180)

/// Then you can notice that we only used `let` keyword to declare these variables.
/// And by opposition to the ``carlo`` variable of type `Person`, when we were able to change the value of an attribute, now we can't:

print(carloStruct.age)

//carloStruct.age = 20

print(carloStruct.age)

/// If you want more in-depth details about how Classes and Structs work, here there are:

/// # Classes

/// 1. Reference Type: Classes are reference types. __When a class instance is assigned to another variable, or passed as a parameter, both variables point to the same instance in memory__.
/// 2. Heap Memory: Class instances are usually stored in the heap memory, which provides more flexibility but may be less memory-efficient for small instances.
/// 4. Inheritance: Classes support inheritance. You can create a new class that inherits from another class.
/// 3. Mutability: Properties of a class are mutable by default. You can modify properties without using the `mutating` keyword.

/// # Structs

/// 1. Value Type: Structs are value types. When a struct instance is assigned to another variable, or passed as a parameter, a copy of the instance is made. Each instance is independent of others.
/// 2. Stack Memory: Struct instances are usually stored in the stack memory, making them more memory-efficient for small data structures.
/// 3. No Inheritance: Structs do not support inheritance. You cannot inherit from another struct.
/// 4. Immutability: By default, the properties of a struct are immutable. To modify a property, you need to use the `mutating` keyword on the method.

/// Let's see an example of these specific behaviors:

class SimplePerson {
    
    var name: String

    init(name: String) {
        self.name = name
    }

}

/// Creating a new person

var simplePersonA = SimplePerson(name: "Gigi")

/// Then we assign an existing person to another variable
/// We are basically creating another way to access the person called "Gigi" since we are not creating a new `SimplePerson` *instance* but we're assigning an existing one to another variable

var simplePersonB = simplePersonA

/// Let's try to change the name through simplePersonB reference

simplePersonB.name = "Antonio"

print(simplePersonB.name)

/// Now let's try to change it through simplePersonA reference
//simplePersonA.name = "Antonio"

print(simplePersonA.name) // Output1: Antonio | Output2: Antonio
print(simplePersonB.name) // Output1: Antonio | Output2: Antonio

/// Since we are pointing towards the same instance or object with both variables, changing the name through the variable `simplePersonA` or `simplePersonB` doesn't make any difference, changes will be made on the same instance and it will reflect on both variables.


/// Now let's try with `struct`

struct SimplePersonStruct {
    var name: String
}

var personA = SimplePersonStruct(name: "Gigi")
var personB = personA

personB.name = "Antonio"

print(personA.name) // Output: Gigi
print(personB.name) // Output: Antonio

/// Since struct are pass-by-value object when i assign `personA` to `personB`, I'm making a copy of it independant from the other one, so if i make some changes on `personB` changes will be exclusive to `personB` and `personA` will be left untouched


/// # What should I choose? Struct or Classes?

/// Use `struct` when you have a small piece of data that doesn't need to be shared and manipulated across multiple parts of your code.

/// Use `class` when you need reference semantics, inheritance, or when you are working with larger, more complex data structures.
