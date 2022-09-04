import UIKit

//연산자 -> 우선순위가 존재함

//증가 연산자와 감소 연산자
//x++ -> 3에서부터 사라짐
// x = x + 1 or x+=1 로 사용해야함

// == -> 값(values)가 같은지를 물음
// === -> 주소(인스턴스)가 같으냐

//XOR(^) 캐럿

//범위 연산자
//닫힌 범위 연산자
//x...y -> x에서 시작하여 y로 끝나는 범위에 포함된 숫자
//5...8 -. 5,6,7,8

//반 열린 범위 연산자
//x..<y
//x부터 시작하여 y가 포함되지 않는 모든 숫자
//5..<8 -> 5,6,7

//삼항 연산자
// [조건] ? [참 표현식] : [거짓 표현식]

//nil 합병연산자 -> nil-Coalescing Operator
//옵셔널변수 ?? nil 일 때 할당되는 값
//옵셔널 변수의 값이 nil이라면 ?? 다음 값으로 할당이 됨
let defaultColor = "black"
var userDefinedColor : String? // nil

var myColor = userDefinedColor ?? defaultColor
print(myColor) //nil 이기때문에 defaultColor의 값이 할당이 됨 -> 옵셔널 아님
userDefinedColor = "red" //nil이 아님 -> 옵셔널(레드)
myColor = userDefinedColor ?? defaultColor // nil이 아니면 옵셔널이 풀려서 myColor에 할당
print(myColor) // nil이 아니므로 본래 값인 red가 할당 -> 옵셔널이 아님

//형 변환 as as? as!

//업케스팅의 경우 안전한 캐스팅에 속함
//상속 관계가 있는 클래스들끼리만 타입 캐스팅이 가능함 upcasting -> 자식 인스턴스를 부모 클래스형으로
//as 연산자 -> 자식인스턴스 as 부모인스턴스

//다운캐스팅
//부모인스턴스 as! 자식클래스 -> 대부분 ?로 다운캐스팅 형변환을 함(안전)
//성공 확신이 있다면 as! 키워드를 사용하여 강제 변환 -> 오류 발생시 crash
//성공 확신이 없다면 as?를 사용하여 안전하게 변환 -> 변환이 되지 않으면 nil을 리턴

// let myScrollView : UIScrollview = UIScrollView() // 부모 인스턴스
// let myTextView = myScrollView as! UITextView // 부모인스턴스 as! 자식클래스
// -> 변환이 안 되면 오류

//if let myTextView = myScrollView as? UITextView { // 성공시 옵셔널 이기때문에 바인딩 작업을 거침
// print("type cast suc")
// else
// print("failed")

var x : Any = "Hi"
print(x, type(of: x))
x = 10
var y : Int = x as! Int // Any 타입이 부모 Int 자식 -> 다운캐스팅
var z : Int? = x as? Int // 결과가 옵셔널형으로 나오기때문에 옵셔널타입으로 선언해줘야함
print(x, type(of: x))
print(y, type(of: y))
print(z, type(of: z))

// 타입 검사 is
//객체가 클래스의 인스턴스인지 검사
//if myobject is MyClass {
// myobject는 MyClass의 인스턴스이다

class A {
}
var a : A = A()
if a is A {
    print("ㅇㅇ")
}

if a === A.self {
    print("ㅇㅇ")
} else {
    print("ㄴㄴ")
}

