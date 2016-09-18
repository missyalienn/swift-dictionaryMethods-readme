let toyStoryFilms = [
    "Toy Story",
    "Toy Story 2",
    "Buzz Lightyear of Star Command: The Adventure Begins",
    "Toy Story 3",
    "Toy Story 4"
]

let starWarsFilms = [
    "Star Wars",
    "The Empire Strikes Back",
    "Star Wars: Episode VI",
    "Star Wars: Episode I",
    "Star Wars: Episode II",
    "Star Wars: Episode III",
    "Star Wars: The Clone Wars",
    "Star Wars: The Force Awakens",
    "Star Wars: Episode VIII",
    "Star Wars: Episode IX"
]

let fastAndFuriousFilms = [
    "The Fast and the Furious",
    "2 Fast 2 Furious",
    "Turbo-Charged Prelud",
    "Tokyo Drift",
    "Fast & Furious",
    "Los Bandoleros",
    "Fast Five",
    "Fast & Furious 6",
    "Furious 7",
    "Fast 8"
]

var movies = [
    "Toy Story": toyStoryFilms,
    "Star Wars": starWarsFilms,
    "The Fast and the Furious": fastAndFuriousFilms
]

let godfatherFilms = [
    "The Godfather",
    "The Godfather Part II",
    "The Godfather Part III"
]


// UPDATING KEYS

let result1 = movies.updateValue(godfatherFilms, forKey: "The Godfather")
let result2 = movies.updateValue(fastAndFuriousFilms, forKey: "The Fast and the Furious")

print(result1)
print(result2)

let films = movies["The Godfather"]
print(films)

if let godfatherMovies = movies["The Godfather"] {
    print(godfatherMovies)
}



// MODIFYING VALUES 

//Sometimes a value is mutable, which means that you can alter it in some way. For example, you may want to append an item to an Array value. Imagine we just got word from the studio that there are going to be two more Fast and Furious movies: Faster! 9 and THE FASTEST 10. Since the values of the movies dictionary are all arrays of strings, you have probably guessed that you can use the append() method of Array to add items to those values.

if var films = movies["The Fast and the Furious"] {
    films.append("Faster! 9")
    films.append("THE FASTEST 10")
    
    movies["The Fast and the Furious"] = films
}

if let fastMovies = movies["The Fast and the Furious"] {
    for (index, film) in fastMovies.enumerated() {
        print("\(index + 1). \(film)")
    }
}



// DELETING KEY/VALUE PAIRS FROM A DICTIONARY

movies["The Fast and the Furious"] = nil

if let fast3rFilms = movies["The Fast and the Furious"] {
    print("\(fast3rFilms)")
} else {
    print("YAY! no more Fast & Furious movies!")
}





// COUNTING ITEMS IN A DICTIONARY

let planetsAndTheirMoons = [
    "Mercury": 0,
    "Venus": 0,
    "Earth": 1,
    "Mars": 2,
    "Jupiter": 50,
    "Saturn": 53,
    "Uranus": 27,
    "Neptune": 13
]

var planetCount = 0
for (planet, numberOfMoons) in planetsAndTheirMoons {
    planetCount += 1
}
print(planetCount)

let planetCount2 = planetsAndTheirMoons.count
print(planetCount2)


if planetsAndTheirMoons.isEmpty {
    print("planetsAndTheirMoons is empty")
} else {
    print("planetsAndTheirMoons has \(planetsAndTheirMoons.count) items")
}


var emptyDictionary = [String: String]()
if emptyDictionary.isEmpty {
    print("Ah hah! It's empty.")
} else {
    print("There's something here...")
}



// RETRIEVING KEYS FROM A DICTIONARY

let planetNames = Array(planetsAndTheirMoons.keys)

for planet in planetsAndTheirMoons.keys {
    print(planet)
}



// RETRIEVING VALUES FROM A DICTIONARY

let allTheMoons = Array(planetsAndTheirMoons.values)

for numberOfMoons in planetsAndTheirMoons.values {
    print(numberOfMoons)
}


