import UIKit

//for - in 반복문
//for 상수명 in 컬렌션 또는 범위
//실행코드

for index in 1...5 {
    print(index)
}

for num in 1...5 {
    for _ in 1...num {
        print("*", terminator: "")
    }
    print()
}
print("새줄")

for num2 in 1...5 {
    for _ in stride(from: 5, through: num2, by: -1) {
        print("*", terminator: "")
    }
    print()
}


for _ in 1...5 {
    print("_ 언더스코어로 생략이 가능함")
}
let names = ["anna", "alex", "brian"]

for name in names {
    print(name)
}
//인덱스로 접근

//while 조건식
//반복 코드

var myCount : Int = 0
while myCount < 1000 {
    myCount += 1
}
print(myCount)

for i in 1..<10 {
    if i > 5 { break } //if문 뒤에 한 줄 문장으로 정리가 가능해도 {} 중괄호를 해줘야함
    print(i)
}

for i in 1...10 {
    if i % 2 == 0 {
        continue
    }
    print(i)
}

let weight : Double = 60.0
let height : Double = 170.0
let bmi = weight / (height*height*0.0001)
var body : String
type(of: bmi)

switch bmi {
case 40... :
    print("3단계")
case 30...39 :
    print("2단계")
case 25...29 :
    print("1단계")
case 18.5...25 :
    print("정상")
default :
    print("저체중")
}
//gurad문 (조건식이 거짓이면 실행하는 구조)
//else절에 속한 코드는 현재의 코드 흐름을 빠져 나갈 수 있는 구문을 반드시 포함해야함

//guard <불리언 표현식> else {
//표현식이 거짓일 경우 실행 될 코드
//<코드 블록을 빠져 나갈 구문>
//표현식이 참일 경우 실행되는 코드는 이곳

//if let ~ guard let

func printName(firstName : String, lastName:String?) {
    //if let
    if let lName = lastName { //옵셔널 바인딩
        print(lName, firstName)
    } else {
        print("이프 : 성 없음")
    }
    //guard let
    guard let lName = lastName else { //옵셔널 변수가 값이 없다면
        print("가드 : 성 없음") //없다면 실행 (거짓일때 하고 싶은 문장)
        return //없다면 함수가 바로 여기서 끝남 -> 탈출
    }
    print(lName,firstName) //guard에서 사용한 지역변수를 밖에서도 사용이 가능함 (참일때 사용할 문장)
}

printName(firstName: "수빈", lastName:nil)

//switch 표현식
//case match1 :
//각 문 case에 모두 break가 들어있음
//모든 경우의 수가 필요하기 때문에 default가 필요함

var value : Int = 3
var days : Int = 0
switch (value) {
case 1,3,5,7,8,10,12 :
    print("31")
case 4,6,9,11 :
    print("30일")
default :
    print("잘못 입력함")
}

//where 을 추가하여 부가적인 조건을 더하는게 가능함
var temperature = 60
switch temperature {
case 0...49 where temperature % 2 == 0 :
    print("Cold and even")
case 50...79 where temperature % 2 == 0 :
    print("Warm and even")
default :
    print("Temperature out of range or add")
}
//fallthrough -> case 별로 빠져 나가지 않고 아래로 계속 내려가고 싶다면 사용
var val = 4
switch val {
case 4 :
    print("4")
    fallthrough
case 3 :
    print("3")
    fallthrough
case 2 :
    print("2")
    fallthrough
default :
    print("1")
}

//모두 출력됨
