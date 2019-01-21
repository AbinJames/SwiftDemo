import UIKit

print ("------------Basic String and Variable Demo Start-------------")
//Initial Sample
var str:String = "Hello, playground"
print(str)

let smileyface = "😊"
print(smileyface)

//Unicode Variable Name
var 你好 = "你好世界"
print(你好)
let 😊 = "smiley face"
print(😊)

//Multiple line string

let stringC = """
Hey this is a
example of multiple Line
string by tutorialsPoint

"""
print(stringC)
print ("------------Basic String and Variable Demo End-------------\n")

print ("------------String Interpolation Demo Start-------------")
//String Interpolation
var varA = 20
let constA = 100
var varC:Float = 20.0

var stringA = "\(varA) times \(constA) is equal to \(varC * 100)"
print( stringA )

print ("------------String Interpolation Demo End-------------\n")

print ("------------Optional Variable Demo Start-------------")
//Optional variable
var myString:String?
myString = "Hello, Swift 4!"

if myString != nil {
	print( myString ?? "No value" )
} else {
    print("myString has nil value")
}
print ("------------Optional Variable Demo End-------------\n")

print ("------------Forced Unwrapping Demo Start-------------")
//Forced unwrapping
if myString != nil {
    print(myString!)
} else {
    print("myString has nil value")
}
print ("------------Forced Unwrapping Demo End-------------\n")
print ("------------Automatic Unwrapping Demo Start-------------")
//Automatic unwrapping
//You should only ever mark a variable as an Implicitly Unwrapped Optional if you can guarantee that it will NOT be nil at the time it's called.
var myNewString:String!
myNewString = "Hello, Swift 4!"

if myNewString != nil {
    print(myNewString)
} else {
    print("myNewString has nil value")
}
print ("------------Automatic Unwrapping Demo End-------------\n")

print ("------------Tuple Variable Demo Start-------------")
//Tuple Variable
var error501 = (errorCode: 501, description: "Not Implemented")
print(error501.errorCode ,":", error501.description)   // prints 501.
print ("------------Tuple Variable Demo End-------------\n")

print ("------------Array and For Loop Demo Start-------------")
//Array and for loop
var someInts:[Int] = [10, 20, 30]

for index in someInts {
	print( "Value of index is \(index)")
}
print ("------------Array and For Loop Demo End-------------\n")

print ("------------Repeat Demo Start-------------")
//repeat while with continue
var index = 10

repeat {
	index = index + 1
	if( index == 15 ){
		continue
	}
	print( "Value of index is \(index)")
} while index < 20
print ("------------Repeat Demo End-------------\n")

print ("------------Switch Demo Start-------------")
//switch case with fallthrough
index = 10

switch index {
case 100 :
	print( "Value of index is 100")
	fallthrough
case 10,15 :
	print( "Value of index is either 10 or 15")
	fallthrough
case 5 :
	print( "Value of index is 5")
default :
	print( "default case")
}
print ("------------Switch Demo End-------------\n")

print ("------------String Iteration Demo Start-------------")
//string iteration
for chars in "ThisString" {
	print(chars, terminator: "-")
}
print("")
print ("------------String Iteration Demo End-------------\n")

print ("------------For in with number range Demo Start-------------")
//for in
for num in 0...10{
	print(num)
}
print("")
print ("------------For in with number range Demo End-------------\n")

print ("------------Array Creation Demo Start-------------")
//Array creation
var intArray = [Int](repeating: 0, count: 4)
for eachInt in intArray{
	print(eachInt)
}
print ("------------Array Creation Demo End-------------\n")

print ("------------Sets Demo Start-------------")
//Sets
let evens: Set = [10,12,14,16,18]
let odds: Set = [5,7,9,11,13]
let primes: Set = [2,3,5,7]
print(odds.union(evens).sorted())
print(odds.intersection(evens).sorted())
print(odds.subtracting(primes).sorted())
print ("------------Sets Demo End-------------\n")

print ("------------Dictionary Demo Start-------------")
//Dictionary
var someDict:[Int:String] = [1:"One", 2:"Two", 3:"Three"]
var someVar = someDict[1]

print( "Value of key = 1 is \(someVar ?? "No value")" )
print( "Value of key = 2 is \(someDict[2])" )
print( "Value of key = 3 is \(someDict[3])" )

for (index, keyValue) in someDict.enumerated() {
	print("Dictionary index \(index) - Dictionary key \(keyValue.key) - Dictionary value \(keyValue.value)")
}

var cities = ["Delhi","Bangalore","Hyderabad","Dehradun","Bihar"]
var Distance = [2000,10, 620, 700, 20, 30]
let cityDistanceDict = Dictionary(uniqueKeysWithValues: zip(cities, Distance))

for city in cityDistanceDict{
	print(city)
}

print(cityDistanceDict["Delhi"] as Any)

var closeCities = cityDistanceDict.filter { $0.value < 1000 }

for city in closeCities{
	print(city)
}

var GroupedCities = Dictionary(grouping: cities ) { $0.first! }

print(GroupedCities)
print ("------------Dictionary Demo End-------------\n")

print ("------------Functions Demo Start-------------")
//Functions
func display(no1: Int) -> Int {
	let a = no1
	return a
}

print(display(no1: 100))
print(display(no1: 200))
print ("------------Functions Demo End-------------\n")

print ("------------Functions with multiple return values Demo Start-------------")
//Functions with multiple return values
func ls(array: [Int]) -> (large: Int, small: Int) {
	var lar = array[0]
	var sma = array[0]
	
	for i in array[1..<array.count] {
		if i < sma {
			sma = i
		} else if i > lar {
			lar = i
		}
	}
	return (lar, sma)
}

let num = ls(array: [40,12,-5,78,98])
print("Largest number is: \(num.large) and smallest number is: \(num.small)")

print ("------------Functions with multiple return values Demo End-------------\n")

print ("------------Functions with external parameters Demo Start-------------")
//Functions with external parameters
func pow(firstArg a: Int, secondArg b: Int) -> Int {
	var res = a
	for _ in 1..<b {
		res = res * a
	}
	print(res)
	return res
}

pow(firstArg:5, secondArg:3)
print ("------------Functions with external parameters Demo End-------------\n")

print ("------------Functions with variadic parameters Demo Start-------------")
//Functions with variadic parameters
func vari<N>(members: N...){
	for i in members {
		print(i)
	}
}

vari(members: 4,3,5)
vari(members: 4.5, 3.1, 5.6)
vari(members: "Swift 4", "Enumerations", "Closures")
print ("------------Functions with variadic parameters Demo End-------------\n")

print ("------------Functions with inout parameters Demo Start-------------")
//Functions with inout parameters
func temp(a1: inout Int, b1: inout Int) {
	let t = a1
	a1 = b1
	b1 = t
}

var no = 2
var co = 10
temp(a1: &no, b1: &co)
print("Swapped values are \(no), \(co)")

print ("------------Functions with inout parameters Demo End-------------\n")

print ("------------Nested Functions Demo Start-------------")
//Nested Functions
func calcDecrement(forDecrement total: Int) -> () -> Int {
	var overallDecrement = 0
	func decrementer() -> Int {
		overallDecrement -= total
		return overallDecrement
	}
	return decrementer
}

let decrem = calcDecrement(forDecrement: 30)
print(decrem())

print ("------------Nested Functions Demo End-------------\n")

print ("------------Classes Demo Start-------------")
//Classes
class studentMarks {
	var mark = 300
}

var marks = studentMarks()
print("Mark is \(marks.mark)")

class MarksStruct {
	var mark: Int
	init(mark: Int) {
		self.mark = mark
	}
}

var newMarks = MarksStruct(mark: 200)
print(newMarks.mark)

class SampleClass: Equatable {
	let myProperty: String
	init(s: String) {
		myProperty = s
	}
}

func ==(lhs: SampleClass, rhs: SampleClass) -> Bool {
	return lhs.myProperty == rhs.myProperty
}

let spClass1 = SampleClass(s: "Hello")
let spClass2 = SampleClass(s: "Hello")

spClass1 === spClass2 // false
print("\(spClass1)")

spClass1 !== spClass2 // true
print("\(spClass2)")
print ("------------Classes Demo End-------------\n")

print ("------------Closures Demo Start-------------")
//Closures
let sum = {
	(no1: Int, no2: Int) -> Int in
	return no1 + no2
}

let digits = sum(10, 20)
print(digits)

print ("------------Closures Demo End-------------\n")

print ("------------Closures with single expression Demo Start-------------")
//Closures with single expression returns

//sort with closure
var count:[Int] = [5, 10, -6, 75, 20]
let descending = count.sorted(by: { n1, n2 in n1 > n2 })
let ascending = count.sorted(by: { n1, n2 in n1 < n2 })

print(descending)
print(ascending)

//sorting without closure
var numbers = [45,6,113,56,8,56,43,78]
numbers.sort(by: >)
print(numbers)
print ("------------Closures with single expression Demo End-------------\n")

print ("------------Enum with associated values Demo Start-------------")
//enum with associated values
enum Student {
	case Name(String)
	case Mark(Int,Int,Int)
}

var studDetails = Student.Name("Swift 4")
var studMarks = Student.Mark(98,97,95)

switch studMarks {
case .Name(let studName):
	print("Student name is: \(studName).")
case .Mark(let Mark1, let Mark2, let Mark3):
	print("Student Marks are: \(Mark1),\(Mark2),\(Mark3).")
}
print ("------------Enum with associated values Demo End-------------\n")

print ("------------Enum with raw values Demo Start-------------")
//enum with raw values
enum Month: Int {
	case January = 1, February, March, April, May, June, July, August,
	September, October, November, December
}

let yearMonth = Month.May.rawValue
print("Value of the Month is: \(yearMonth).")
print ("------------Enum with raw values Demo End-------------\n")

print ("------------Structure Demo Start-------------")
//structure
struct markStruct {
	var mark1: Int
	var mark2: Int
	var mark3: Int
	
	init(mark1: Int, mark2: Int, mark3: Int) {
		self.mark1 = mark1
		self.mark2 = mark2
		self.mark3 = mark3
	}
}

var newStructMarks = markStruct(mark1: 98, mark2: 96, mark3:100)
print(newStructMarks.mark1)
print(newStructMarks.mark2)
print(newStructMarks.mark3)
print ("------------Structure Demo End-------------\n")

print ("------------Computed Properties Demo Start-------------")
//computed properties
class sample {
	var no1 = 0.0, no2 = 0.0
	var length = 300.0, breadth = 150.0
	
	var middle: (Double, Double) {
		get {
			return (length / 2, breadth / 2)
		}
		
		set(axis){
			no1 = axis.0 - (length / 2)
			no2 = axis.1 - (breadth / 2)
		}
	}
}

var result = sample()
print(result.middle)
result.middle = (0.0, 10.0)

print(result.no1)
print(result.no2)
print ("------------Computed Properties Demo End-------------\n")

print ("------------Read Only Properties Demo Start-------------")
//read only properties
class film {
	var head = ""
	var duration = 0.0
	var metaInfo: [String:String] {
		return [
			"head": self.head,
			"duration":"\(self.duration)"
		]
	}
}

var movie = film()
movie.head = "Swift 4 Properties"
movie.duration = 3.09

print(movie.metaInfo["head"]!)
print(movie.metaInfo["duration"]!)

//movie.metaInfo = ("new",1.0); //metaInfo' is a get-only property
print ("------------Read Only Properties Demo End-------------\n")

print ("------------Properties Didset - Willset Demo Start-------------")
//properties didset-willset
class Samplepgm {
	var counter: Int = 0 {
		willSet(newTotal){
			print("Total Counter is: \(newTotal)")
		}
		
		didSet {
			if counter > oldValue {
				print("Newly Added Counter \(counter - oldValue)")
			}
		}
	}
}

let NewCounter = Samplepgm()
NewCounter.counter = 100
NewCounter.counter = 800
print ("------------Properties Didset - WillSet Demo End-------------\n")

print ("------------Methods Demo Start-------------")
//methods - functions in class and structs
class Math {
	class func abs(number: Int) -> Int {
		if number < 0 {
			return (-number)
		} else {
			return number
		}
	}
}

struct absno {
	static func abs(number: Int) -> Int {
		if number < 0 {
			return (-number)
		} else {
			return number
		}
	}
}

let newNum1 = Math.abs(number: -35)
let newNum2 = absno.abs(number: -5)

print(newNum1)
print(newNum2)
print ("------------Methods Demo End-------------\n")

print ("------------Methods in Enum Demo Start-------------")
//methods in enum
enum WeekDay :String {
	
	case Monday
	case Tuesday
	
	func day() ->String { return self.rawValue }
	
}

print(WeekDay.Monday.day())
print ("------------Methods in enum Demo End-------------\n")

print ("------------Subscripts Demo Start-------------")
//Subscripts
class daysofaweek {
	private var days = ["Sunday", "Monday", "Tuesday", "Wednesday",
						"Thursday", "Friday", "saturday"]
	subscript(index: Int) -> String {
		get {
			return days[index]
		}
		set(newValue) {
			self.days[index] = newValue
		}
	}
}
var p = daysofaweek()

print(p[0])
print(p[1])
print(p[2])
print(p[3])
print(p[4])
p[4] = "newDay"
print(p[4])
print ("------------Subscripts Demo End-------------\n")

print ("------------Subscripts in struct Demo Start-------------")
//Subscripts in struct
struct Matrix {
	let rows: Int, columns: Int
	var print: [Double]
	init(rows: Int, columns: Int) {
		self.rows = rows
		self.columns = columns
		print = Array(repeating: 0.0, count: rows * columns)
	}
	subscript(row: Int, column: Int) -> Double {
		get {
			return print[(row * columns) + column]
		}
		set {
			print[(row * columns) + column] = newValue
		}
	}
}
var mat = Matrix(rows: 3, columns: 3)

mat[0,0] = 1.0
mat[0,1] = 2.0
mat[1,0] = 3.0
mat[1,1] = 5.0

print(mat[0,0])
print(mat[1,2])
print(mat.print)
print ("------------Subscripts in struct Demo End-------------\n")

print ("------------Inheritance Demo Start-------------")
//Inheritance
class StudDetails {
	var marks1: Int;
	var marks2: Int;
	
	init(stm1:Int, results stm2:Int) {
		marks1 = stm1;
		marks2 = stm2;
	}
	var total: Int {
		return marks1 + marks2
	}
	
	func display() {
		print("Mark1:\(marks1), Mark2:\(marks2)")
	}
	func testOverride(){
		print("In parent class")
	}
}

class displayDetails : StudDetails {
	init() {
		super.init(stm1: 93, results: 89)
	}
	override var total: Int {
		return 0
	}
	
	override func testOverride(){
		print("In child class")
	}
}

let marksobtained = displayDetails()
marksobtained.display()
marksobtained.testOverride()
print(marksobtained.total)
print ("------------Inheritance Demo End-------------\n")

print ("------------Initializer Delegation Demo Start-------------")
//Initializer delegation -  calling initializer from another initializer
struct Stmark {
	var mark1 = 0.0, mark2 = 0.0
}
struct stdb {
	var m1 = 0.0, m2 = 0.0
}

struct block {
	var average = stdb()
	var result = Stmark()
	init() {}
	init(average: stdb, result: Stmark) {
		self.average = average
		self.result = result
	}
	
	init(avg: stdb, result: Stmark) {
		let tot = avg.m1 - (result.mark1 / 2)
		let tot1 = avg.m2 - (result.mark2 / 2)
		self.init(average: stdb(m1: tot, m2: tot1), result: result)
	}
}

let set1 = block()
print("student result is: \(set1.average.m1, set1.average.m2) \(set1.result.mark1, set1.result.mark2)")

let set2 = block(average: stdb(m1: 2.0, m2: 2.0), result: Stmark(mark1: 5.0, mark2: 5.0))
print("student result is: \(set2.average.m1, set2.average.m2) \(set2.result.mark1, set2.result.mark2)")

let set3 = block(avg: stdb(m1: 4.0, m2: 4.0),result: Stmark(mark1: 3.0, mark2: 3.0))
print("student result is: \(set3.average.m1, set3.average.m2) \(set3.result.mark1, set3.result.mark2)")
print ("------------Initializer Delegation Demo End-------------\n")

print ("------------Convenience Initializer Demo Start-------------")
//Conveinience initializers
class mainClass {
	var no1 : Int // local storage
	init(no1 : Int) {
		self.no1 = no1 // initialization
	}
}

class childClass : mainClass {
	var no2 : Int
	init(no1 : Int, no2 : Int) {
		self.no2 = no2
		super.init(no1:no1)
	}
	// Requires only one parameter for convenient method
	override convenience init(no1: Int) {
		self.init(no1:no1, no2:0)
	}
}

let main = mainClass(no1: 20)
let base = childClass(no1: 30, no2: 50)

print("res is: \(main.no1)")
print("res is: \(base.no1)")
print("res is: \(base.no2)")
print ("------------Convienience Initializer Demo End-------------\n")

print ("------------ARC Strong Referencing Demo Start-------------")
//ARC Strong Referencing
class studmarks {
	let name: String
	var stud: student?
	
	init (name: String) {
		print("Initializing: \(name)")
		self.name = name
	}
	deinit {
		print("Deallocating: \(self.name)")
	}
}

class student {
	let name: String
	var strname: studmarks?
	
	init (name: String) {
		print("Initializing: \(name)")
		self.name = name
	}
	deinit {
		print("Deallocating: \(self.name)")
	}
}

var shiba: studmarks?
var mari: student?

shiba = studmarks(name: "Swift 4")
mari = student(name: "ARC")

shiba!.stud = mari
mari!.strname = shiba
print ("------------ARC Strong Referencing Demo End-------------\n")

print ("------------ARC Weak Referencing Demo Start-------------")
//ARC - Weak Referencing
class module {
	let name: String
	init(name: String) { self.name = name }
	var sub: submodule?
	deinit { print("\(name) Is The Main Module") }
}

class submodule {
	let number: Int
	init(number: Int) { self.number = number }
	weak var topic: module?
	
	deinit { print("Sub Module with its topic number is \(number)") }
}

var toc: module?
var list: submodule?
toc = module(name: "ARC")
list = submodule(number: 4)
toc!.sub = list
//list!.topic = toc

toc = nil
list = nil
print ("------------ARC Weak Referencing Demo End-------------\n")

print ("------------Protocols Demo Start-------------")
//Protocols
protocol classa {
	var marks: Int { get set }
	var result: Bool { get }
	
	func attendance() -> String
	func markssecured() -> String
}

protocol classb: classa {
	var present: Bool { get set }
	var subject: String { get set }
	var stname: String { get set }
}

class classc: classb {
	var marks = 96
	let result = true
	var present = false
	var subject = "Swift 4 Protocols"
	var stname = "Protocols"
	
	func attendance() -> String {
		return "The \(stname) has secured 99% attendance"
	}
	func markssecured() -> String {
		return "\(stname) has scored \(marks)"
	}
}

let studdet = classc()
studdet.stname = "Swift 4"
studdet.marks = 98
studdet.markssecured()

print(studdet.marks)
print(studdet.result)
print(studdet.present)
print(studdet.subject)
print(studdet.stname)
print ("------------Protocols Demo End-------------\n")

print ("------------TypeCasting Demo Start-------------")
class Subjects {
	var physics: String
	init(physics: String) {
		self.physics = physics
	}
}

class Chemistry: Subjects {
	var equations: String
	init(physics: String, equations: String) {
		self.equations = equations
		super.init(physics: physics)
	}
}

class Maths: Subjects {
	var formulae: String
	init(physics: String, formulae: String) {
		self.formulae = formulae
		super.init(physics: physics)
	}
}

let saprint: [AnyObject] = [Chemistry(physics: "solid physics", equations: "Hertz"),
							Maths(physics: "Fluid Dynamics", formulae: "Giga Hertz"),
							Chemistry(physics: "Thermo physics", equations: "Decibels"),
							Maths(physics: "Astro Physics", formulae: "MegaHertz"),
							Maths(physics: "Differential Equations", formulae: "Cosine Series")]

let samplechem = Chemistry(physics: "solid physics", equations: "Hertz")
print("Instance physics is: \(samplechem.physics)")
print("Instance equation is: \(samplechem.equations)")

let samplemaths = Maths(physics: "Fluid Dynamics", formulae: "Giga Hertz")
print("Instance physics is: \(samplemaths.physics)")
print("Instance formulae is: \(samplemaths.formulae)")

var chemCount = 0
var mathsCount = 0

for item in saprint {
	if let chem = item as? Chemistry {
		print("Chemistry topics are: '\(chem.physics)', \(chem.equations)")
	} else if let example = item as? Maths {
		print("Maths topics are: '\(example.physics)', \(example.formulae)")
	}
}

var exampleany = [Any]()
exampleany.append(12)
exampleany.append(3.14159)
exampleany.append("Example for Any")
exampleany.append(Chemistry(physics: "solid physics", equations: "Hertz"))

for item in exampleany {
	switch item {
	case let intValue as Int:
		print("Integer value is \(intValue)")
	case let someDouble as Double where someDouble > 0:
		print("Pi value is \(someDouble)")
	case let someString as String:
		print("\(someString)")
	case let phy as Chemistry:
		print("Topics '\(phy.physics)', \(phy.equations)")
	default:
		print("None")
	}
}
print ("------------TypeCasting Demo End-------------\n")
print ("------------Extensions Demo Start-------------")
var add: Int {return self + 100 }
var sub: Int { return self - 10 }
var mul: Int { return self * 10 }
var div: Int { return self / 5 }
}

let addition = 3.add
print("Addition is \(addition)")

let subtraction = 120.sub
print("Subtraction is \(subtraction)")

let multiplication = 39.mul
print("Multiplication is \(multiplication)")

let division = 55.div
print("Division is \(division)")

let mix = 30.add + 34.sub
print("Mixed Type is \(mix)")
print("---------------Extensions Demo End----------------\n")
