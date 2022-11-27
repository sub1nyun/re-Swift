import UIKit

// 타입을 직접 명시해주는 것을 타입 어노테이션이라 함
// 선언부에 타입 어노테이션이 없을 경우 컴파일러가 직접 타입을 식별하기 위하여 타입을 추론함

//튜플 Tuple
//스위프트의 언어의 강력한 기능 중 하나로
//여러 값을 하나의 개체에 일시적으로 묶는 방법
//저장되는 항목들은 어떠한 타입도 가능하며, 저장된 값들이 모두 동일한 타입이어야 하는 제약 또한 없음
// let myTuple = (10, 12.1, "Hi")
//튜플의 요소들은 여러 다른 방법으로 접근이 가능함
//특정 튜플 값은 인덱스 위치를 참조하면 간단하게 접근
let myTuple = (10, 12.1, message : "Hi") // 세가지 값을 하나로 묶어서 보관함

let testMyTuple = (cafe : "Starbucks", coffee : "americano", 4000)
print(testMyTuple)

var myCoffee = testMyTuple.coffee
print(myCoffee)

var myString = myTuple.2
print(myString)

let (myInt, myFloat, meString) = myTuple
print(myTuple.0)
type(of: myTuple)
print(myFloat)
print(myTuple.1)
var t = myTuple.1

// _ 언더바가 아닌 언더스코어라고 말하며 생략의 의미를 갖고 있음
var (meInt, _, eeString ) = myTuple //12.1 은 무시
//각 값 에 이름을 할당이 가능함 -> 각 값을 참조하는 데 사용함
//let myTuple = (count: 10, length: 12.1, message: "Hi")
print(myTuple.message, myTuple.2)

//void는 비어있는 튜플 empty tuple
typealias Void = ()
// () -> 기존타입 Void -> 새로운 타입을 별명으로 줌


