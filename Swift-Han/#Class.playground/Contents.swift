import UIKit

//Class

//ex) 클래스(강아지)를 통해 만들어진 객체를 인스턴스라고 함
//설계도(클래스)를 통해 객체를 만들고 메모리에 올라간 것들을 인스턴스라함

//자바 필드 -> 스위프트 프로퍼티
//구조체와 클래스를 구분하여 사용함

// 우선적으로 생각할 것 : 상속이 필요하다면 -> 클래스를 사용
// 상속이 필요하지 않다면 구조체를 사용할 것을 권장함
// 구조체 : Value 타입
// 클래스 : 참조 타입

//클래스의 기본 구조
//class 이름 : 부모 클래스 {
// 프로퍼티 (필드)
//인스턴스 메소드
// 타입 메소드(클래스 메소드)

//클래스에 프로퍼티(필드)추가
//1. 초기값이 있어야함, 2.init을 이용해서 초기화해야함, 3.옵셔널 변수로 선언
//3가지중 한가지를 충족해야 추가가 가능함
//class Man {
//    var age : Int
//    var weight : Double
//}
// 위 경우 stored property(일반적인 프로퍼티)로 오류가 발생함

//1. 직접 지정 var age : Int = 1
//2. 옵셔널 변수 var age : Int? or var weight : Double! -> 자동으로 nil로 초기화
//3. init을 사용 init() { age = 1 weight = 3.5

//메소드
//1. 타입 메소드 2. 인스턴스 메소드

//인스턴스 메소드의 경우 일반적인 메소드와 같음
//var kim : Man = Man() -> 괄호는 눈에 보이지 않는 default initializer 임 -> 컴파일러가 알아서 처리 해줬음 클래스에서
//클래스의 인스턴스를 만들기 위해서는 = 클래스명() 괄호를 꼭 기제해줘야함
class Man {
    var age : Int = 1
    var weigth : Double = 3.5
    var manAge : Int {
        return age - 1 //setter가 없다면 get {} 생략이 가능함 -> 변경하지 않더라도 var로 선언
    }
    func display() {
        print("\(age)")
    }
    class func cM() { //자식 클래스에서 재정의가 가능함
        print("cM은 클래스 메소드")
    }
    static func scM() { //오버라이드 불가
        print("scM은 클래스 메소드(static)")
    }
}

var kim : Man = Man()
var yoon = Man()

//타입(클래스 메소드) static or class
Man.cM()
Man.scM()

//init() -> 인스턴스 초기화때 사용하는 메소드 func 생략 가능 (특별)
//designated initializer -> 모든 프로퍼티를 초기화 시키는 생성자
//소멸자 deinit{}
//self -> 현재 클래스나 메소드 내에서 프로퍼티(필드)를 가르킬 때 앞에 self(this)를 붙혀서 사용
//computed property (계산 프로퍼티) var manAge : Int { get{ return age -1
//setter가 있다면 get{} 생략이 불가능함
//set(newValue) -> 기본 age = newValue + 1
//setter의 매개변수명이 newValue인 경우에만 (newValue) 생략이 가능함
//set { age = newValue + 1

//var manAge : Int {
//    get{ return age - 1}
//    set{ age = newValue + 1 }
//}

//method overloading : 생성자 중첩

//failable initializer -> 실패 가능한 생성자 : init?
//init?(named: String) -> 옵셔널 형으로 만들어지기 때문에 사용하려면 언래핑을 해야함 -> !

class Man2 {
    var age : Int
    var weight : Double
    func display() {
        print("\(age)")
    }
    init?(age : Int, weight : Double) {
        if age <= 0 {
            return nil
        } else {
            self.age = age
            self.weight = weight
        }
    }
}

//1
var tt : Man2? = Man2(age: 10, weight: 20.5) //옵셔널로 선언
tt?.display()
//1-2
if let tt2 = tt { //옵셔널 바인딩
    tt2.display() //nil일 경우 실행하지 않고 종료됨
}

//2 -> 인스턴스 생성과 동시에 옵셔널 바인딩
if let tt3 = Man2(age: 2, weight: 5.5) {
    tt3.display() //nil일 경우 실행하지 않고 종료됨
}
    
//3. -> 인스턴스 생성하면서 바로 강제 언래핑
var tt4 : Man2 = Man2(age: 3, weight: 7.5)! //값이 정상적으로 들어오지 않았다면 오류가 발생함
tt4.display()

//4. 옵셔널 인스턴스를 사용시 강제 언래핑
var tt5 : Man2? = Man2(age: 4, weight: 10.5)
tt5!.display()
