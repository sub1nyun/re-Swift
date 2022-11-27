import UIKit
import Foundation

// 함수 -> 특정 작업을 수행하는 코드 블록
// 함수 정의부의 값은 매개변수 -> 파라미터
// 함수를 호출 시 넘겨주는 값은 아규먼트(인수)라고 칭함


//키워드는 반드시 func로 시작하며 반환이 필요하지 않다면 Void 필요하다면 type -> 타입

func sayHello() -> Void { // -> Void 생략이 가능함
    print("Hello")
}

sayHello() //호출

func add(x : Int, y :Int) -> Int { //Int형 리턴
    return (x+y)
}
add(x: 10, y: 20)
let a = add(x: 20, y: 10)
type(of: add)
type(of: a)

//lebel을 붙혀서 매개변수명을 지정하는 것이 가능함
func add2(first x : Int, second y : Int) -> Int {
    return x+y
}
add2(first: 20, second: 30)

func add3(_ x: Int, _ y : Int) -> Int { // 매개변수명 생략
    return x+y
}
print(add3(10, 20)) //편해보이지만 거의 사용하지 않는 방법

func add4(_ x:Int, with y:Int) -> Int { //첫번째 매개변수명만 생략하는 경우 -> 오브제특씨 방법 가장 많이 씀
    print("이거 머임")
    print(#function) //함수명 리터럴
    return x+y
}
print(add4(10, with: 20)) //혼합해서 사용하는 방법

//func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
//    // Override point for customization after application launch.
//    return true
//}

//func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
//    // Called when a new scene session is being created.
//    // Use this method to select a configuration to create the new scene with.
//    return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
//}

//다른언어 처럼 application이 함수명이 아니라 _ : ~~~ 가 모두 함수 명임


//디폴트 매개변수 정의하기
//전달하는 값이 없는 경우, 디폴트 값 사용
func sayHello2(count : Int, name : String = "수빈") -> String {
    return "\(name), 너의 번호는 \(count)"
}

//이름 값을 전달
var message = sayHello2(count: 10, name: "소프트")
//이름은 기본 값을 사용
var message2 = sayHello2(count: 100) //출력이 기본 값인 '수빈' 이 나옴

//여러 개의 결과를 반환 하기
//괄호로 둘러 쌓여있으면 튜플임
func converter(length : Float) -> (yards : Float, centimeters: Float, meters : Float) {
    let yards = length * 0.02777778
    let centimeters = length * 2.54
    let meters = length * 0.0254
    return (yards, centimeters, meters)
}

var lengthTuple = converter(length: 10)
print(lengthTuple)
print(lengthTuple.yards)
print(lengthTuple.meters)
print(lengthTuple.centimeters)

var x : Int = 10
var y : Int = 3
//스위프트는 같은 자료형만 연산이 가능함
Double(x)/Double(y) //3.33333~
x/y //3 -> 정수라 소숫점 단위가 출력되지 않음

//가변 매개변수
//... 세 개의 점을 이용하여 매개변수가 가변(여러 값)이 들어 올 수 있음
//함수는 가변 변수를 하나만 갖을 수 있음
func displayStrings(Strings: String...) {
    for string in Strings {
        print(string)
    }
}

displayStrings(Strings: "일", "이", "삼", "사")
displayStrings(Strings: "one", "two")

//임의의 개수의 정수 값의 합을 출력하는 함수를 작성 후 호출
func displayAdd(numbers : Int...) {
    var x : Int = 0
    for num in numbers {
        x += num
    }
    print(x)
}

displayAdd(numbers: 1,2,3)
displayAdd(numbers: 2,2,2,2,2)

//input 매개변수 call by reference 구현
//스위프트는 기본적으로 콜바이 밸류임
// in-out parameter로 구현해야함

var myValue = 10
func doubleValue (value : inout Int) -> Int { //레퍼런스하고 싶은 매개변수 자료형 앞에 기제
    value += value
    return value
}

print(myValue)
print(doubleValue(value: &myValue)) // 변수에 & 붙혀서 호출
print(myValue)

var myTest = 10
func doubleTest (test : Int) -> Int {
    var x : Int = 0
    x = test + test
    print(x)
    return x
}

print(myTest)
print(doubleTest(test: myTest))
print(myTest)

//함수를 매개변수로 사용 하기
//스위프트의 함수는 데이터 타입처럼 처리가 가능함
//함수 -> 1급 객체로 인자로 넘겨줄 수 있음
//매개변수로 함수를 받을 경우 -> 받는 함수는 함수의 데이터 타입을 선언함

//예시
func inchesToFeet (inches: Float) -> Float {
    return inches * 0.0833333
}
let toFeet = inchesToFeet
let toYards = inchesToFeet

func outputConversion(converterFunc : (Float) -> Float, value : Float) { //함수를 매개변수로 이용함
    let result = converterFunc(value)
    print("\(result)")
}
outputConversion(converterFunc: toFeet, value: 10)

func decideFunction (feet : Bool) -> (Float) -> Float {
    if feet {
        return toFeet
    } else {
        return toYards
    }
}

decideFunction(feet: true)
//1급 객체 1. 변수에 저장가능 2. 매개변수 전달 가능, 3. 리턴 값으로 사용이 가능

