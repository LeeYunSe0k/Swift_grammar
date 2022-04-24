/*
 함수 : 작업의 가장 작은 단위이자 집합
 func 함수명(파라미터 이름:데이터 타입)->반환타입{
    return 반환값
 }
 */
import UIKit

func sum(a: Int, b: Int)->Int{
    return a + b
}

sum(a: 5, b:3)

func hello() -> String{
    return "hello"
}
hello()

func printName(){ // = func printName() -> Void
    print("yunseok")
}
printName()

func greeting(friend: String, me: String = "yunseok"){
    print("Hello, \(friend)! I'm \(me)")
}
greeting(friend: "eunjae")

/*
 func 함수 이름(전달인자 레이블: 매개변수 이름: 매개변수 타입, 전달인자 레이블: 매개변수 이름: 매개변수 타입...)
    return 반환 값
 */
func sendMessage(from myName: String, to name: String) -> String{
        return "Hello \(name)! I'M\(myName)"
}
sendMessage(from: "yunseok", to: "eunjae")
// 인자 레이블 사용하지 않을 시
func sendMessage2(_ name: String) -> String{
    return "Hello \(name)"
}
sendMessage2("eunjae")

// 가변 매개변수를 둘 때

func sendMessage3(me: String, friends: String...) -> String{
    return "Hello \(friends)! I'm \(me)"
}
sendMessage3(me: "yunseok", friends: "eunjae", "haneul")
