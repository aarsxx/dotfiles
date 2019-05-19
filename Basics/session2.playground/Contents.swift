import UIKit

var str = "Hello, playground"


// fibonacci
var a: Int = 0, b: Int = 1, c: Int;
    print(a)
    print(b)
    c = a + b
    print(c)

while c<=89 {
    a = b
    b = c
    c = a + b
    print(c)
}

// Palindrome
var reversen = 0 ;
var rem = 0 ;
var n  =  123321
// 1 2 3 3 2 1
var no = n
no = n

// palindrome
while n != 0{
    rem = n%10
    reversen = reversen * 10 + rem
    n /= 10
}
// berguna untuk memberikan hasil akhir
if(no == reversen){
    print("\(no)" + " is Palindrome")
}else{
    print("\(no)" + " is not Palindrome")
}
// array
var CoachCourseNet: [String] = ["Dodit","Chelle","Adit"]
CoachCourseNet.isEmpty
CoachCourseNet.count
CoachCourseNet.append("Andika")
CoachCourseNet.insert("Leonardo", at: 4)
CoachCourseNet.remove(at: 1)
CoachCourseNet[1] = "Alvin"
CoachCourseNet.count
print(CoachCourseNet[1])

// for loop
for Coach in CoachCourseNet{
    print(Coach)
}
// foreach
CoachCourseNet.forEach{ Coach in
    print(Coach)
}

// set
var musicGenre = Set<String>()
musicGenre.isEmpty
musicGenre.count
musicGenre.insert("Rock")
musicGenre.insert("Jazz")
musicGenre.insert("Pop")
musicGenre.count
print(musicGenre)

print("\n\n\n")
// Dictionary
var FilmCategoryList: [String:[String]] = [:]
FilmCategoryList["Now Playing"] = ["EndGame", "Pikachu"]
FilmCategoryList["Coming Soon"] = ["Spiderman", "BrightBurn"]
FilmCategoryList["Anime"] = ["Naruto", "One piece"]
FilmCategoryList["Kosong"] = [" "]
for Category in FilmCategoryList{
    print(Category.key)
    for film in Category.value{
        print("-\(film)")
    }
    print("\n")
}
print(FilmCategoryList["Anime"] as Any)



let Billionaries = [
    "Mark Zuckerberg", "Jack Ma", "Elon Musk", "Zeff Bezos"
]
let charToSearchFor = "Zeff Bezos"
for richPeople in Billionaries{
    print(richPeople)
    if charToSearchFor == richPeople{
        break;
    }
}

let BillionariesDictionary = [
    "Mark Zuckerberg": 1, "Jack Ma": 1, "Elon Musk": 1, "Zeff Bezos": 1
]
    let doesExist = BillionariesDictionary[charToSearchFor]

// Optional

var namaku: String? = "Andika"
print(namaku!)

var phoneNumber: String? = "087881986436"

phoneNumber = nil

if let phone = phoneNumber{
    print(phone)
}
else{
    print("No Number")
}



// Enumeration
enum ArahMataAngin{
    case Utara
    case Selatan
    case Timur
    case Barat
}
let ArahDirection:ArahMataAngin = .Selatan
if ArahDirection == .Selatan{
    print("Maju");
}
else{
    print("Stay");
}
