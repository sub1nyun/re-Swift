import UIKit

//부모 superclass -> 자식 클래스

// class ViewController : UIViewController {}

//상속된 클래스는 부모의 모든 기능을 상복받아감
// 자바와 같은 단일 상속임

//class 자식 : 부모
//부모 클래스는 하나만 가능함
// 콜론 다음이 여러 개이면 나머지를 프로토콜에 해당
//ex) class 명 : 부모 클래스명, 프로토콜명{} -> 부모 다음으로 표기해야함
//부모 클래스가 없다면 class 명 : 프로토콜명{} 으로 바로 표기가 가능함
//기본적으로 상속은 class만 가능함 -> 구조체 x
//프로토콜은 상속이 아닌 채택한다고 표현함

class Man {
    var age : Int
    var weigth : Double
    func display() {
        print("출력")
    }
    init(age : Int, weight : Double) {
        self.age = age
        self.weigth = weight
    }
}

class Student : Man {
    //현재 비어있는 상태이지만 Man의 모든 것을 가지고 있음
    var name : String
    func displays() {
        print("이름도")
    }
    init(age : Int, weight: Double, name : String) {
        self.name = name
        super.init(age: age, weight: weight) // 부모클래스의 init을 호출
    }
}

var kim : Man = Man(age: 10, weight: 20.5)
kim.display()
var lee : Student = Student(age: 20, weight: 65.2)
lee.display()
print(lee.age)

//overriding : 부모와 자식 클래스 간에 서로 같은 메소드가 있는 것 -> 자식 우선



