import UIKit

//스위프트에서 옵셔널은 상당히 중요함
//기본적으로 값이 있을 수도, 없을 수도 있다는 의미 (옵션) Nullable type

var y : Int? = 10
var z : Int!
//주로 ?형을 자주 사용함
print(y) // 옵셔널(10)이 출력이 됨
print(z) // 값을 주지 않으면 nil 이 들어있음

// 값을 반환할 때 오류가 발생할 가능성이 있는 값을 옵셔널 타입이라는 객체로 감싸서 반환함

// 옵셔널 변수에 값이 있으면 옵셔널로 래핑이 되었다고 표현함
// 옵셔널에 래핑된 값은 강제 언래핑으로 풀어줌 -> !

// 옵셔널 바인딩
//주로 사용하는 방법
//강제 언래핑의 또 다른 방법으로, 옵셔널에 할당된 값을 임시 변수 또는 상수에 할당시키는 것

//if let constantName = optionalName {
//옵셔널 변수가 값이 있다면 언래핑해서 일반 상수 constantName에 대입하고 if문 실행
//값이 없다면 if문의 조건이 거짓이 되면서 if문이 실행하지 않음

var x : Int?
x = 10
if let xx = x { //옵셔널 변수 x가 값(10)이 있으므로 언래핑 -> xx(상수)에 대입하고 if문이 실행됨
    print(xx)
} else {
    print("nil")
}

var x1 : Int? // 초기값이 없으므로 nil이 들어가있음
if let xx = x1 { //옵셔널 변수 x1 의 값이 없어서 if문이 거짓 -> 실행이 되지않고 else 로 빠짐
    print(xx)
} else {
    print("nil")
}

// 여러 옵셔널을 언래핑 -> , 사용

var pet1 : String?
var pet2 : String?
pet1 = "cat"
pet2 = "dog"

if let firstpet = pet1, let secondpet = pet2 { //모두 nil이 아닐때만 if문이 작동됨 , -> && 모두 만족해야함
    print(firstpet,secondpet)
} else {
    print("nil")
}

//옵셔널이 항상 유효한 값을 가질 경우 -> 암시적인 언래핑이 되도록 선언할 수 있음
//이러반 방법을 사용하여 선언하면 강제 언래핑이나 옵셔널 바인딩을 하지 않아도 값에 접근할 수 있음
//암묵적인 언래핑으로 옵셔널을 선언하기 위해서는 (!)를 사용

let a : Int! = 1
type(of: a)
let b : Int = a //!로 선언된 옵셔널은 -> 옵셔널로 사용되지 않을 경우 자동으로 언래핑처리해줌
type(of: b)
let c : Int = a!
let d = a //d의 자료형이 명시가 되어 있지 않음 -> 옵셔널로 사용될 수 있음
let e = a + 1 //일반적인 int 형

class MyAge {
    var age : Int!
    init(age : Int) {
        self.age = age
    }
}

//Any 와 AnyObject
//AnyObject(protocol) -> 클래스 인스턴스 타입만 가능함
//상속관계가 아니여도 타입 캐스팅이 가능함
//어떤 클래스의 객체도 저장이 가능함
//최상위 개념
//구조체나 열거형은 허용하지 않음

//Any -> 모두 가능함
//클래스, 구조체, 열거형, 함수타입도 가능함

// 플러터 연결 테스트하기 


