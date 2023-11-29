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
