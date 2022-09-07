import UIKit

//익명함수 -> 이름 없는 함수
//자바의 람다
//클로저 표현식은 독립적인 코드 블록을 뜻함

func add(x : Int, y : Int) -> Int {
    return x+y
}
//클로저로 변경 -> func add 생략
let add1 = { (x : Int, y :Int) -> Int in return(x+y) } //이름이 없어서 상수나 변수에 할당함
print(add1(10, 20)) //x:10 , y : 20 할 필요 없음

//클로저 표현식 사용법
// { ( 변수 명 : 타입 )-> 반환 타입 in 클로저 표현식 코드 }

//두 개의 정수 매개변수를 받아서 곱한 값을 반환
//func mul(val1 : Int, val2 : Int) -> Int ~~

let multiply = { (val1 : Int, val2 : Int) -> Int in return val1*val2 }
let result = multiply(10,20) // 상수를 함수처럼 호출함

//후행 클로저
//클로저가 함수의 마지막 매개변수라면 -> 매개변수명(cl) 생략 후 소괄호 외부에 클로저를 작성함
//마지막 매개변수 이름을 생략한 후 함수 소괄호 위부에 구현 { }
//shorthand argument name -> 매개변수 $0 $1 $2 순으로 표현이 가능함
func someFun(cl: () -> Void) {
    
}
//trailing closure를 사용하지 않으면
// { 중괄호 안에 코드(기능)을 작성 해줘야함
//trailing closure 사용
//someFun() {

