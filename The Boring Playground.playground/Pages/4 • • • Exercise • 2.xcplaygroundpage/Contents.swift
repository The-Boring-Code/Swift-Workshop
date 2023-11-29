// MARK: Exercise N°2 - Classes & Structs

/// Let's try with something else:
/// - Try to create a new class representing an animal, with its species, and some information and some interesting method.
/// - Create multiples instances of this class
/// - Write a loop that calls one method of these instances

// MARK: Exercise N°2 - Classes & Structs - Solution

class Animal {

    var species: String
    var size: String
    var sound: String

    init(species: String, size: String, sound: String) {
        self.species = species
        self.size = size
        self.sound = sound
    }

    func makeSounds() {
        print(sound)
    }

}

var dog: Animal = Animal(species: "dog", size: "little", sound: "bark")
var cat: Animal = Animal(species: "cat", size: "little", sound: "meow")
var cow: Animal = Animal(species: "cow", size: "very big", sound: "mooooh")

var animals: [Animal] = [
    dog,
    cat,
    cow
]

for animal in animals {
    animal.makeSounds()
}

