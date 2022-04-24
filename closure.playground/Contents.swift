/*
 클로저 : 코드에서 전달 및 사용할 수 있는 독립 기능 블록이며, 일급 객체이 역할을 할 수 있음
 일급객체 : 전달 인자로 보낼 수 있고, 변수/상수 등으로 저장하거나 전달할 수 있으며, 함수의 반환값이 될 수도 있다.
 - Named Closure, Unnamed Closure
 */
/*
 표현식
 { (매개 변수) -> 리턴 타입 in 실행 구문 // in을 기준으로 왼쪽 (매개 변수, 리턴타입)은 클로저 헤드, 실행 구문은 클로저 바디이다.
 }
 */
import Foundation
import os

let hello = { () -> () in
    print("hello")
}
hello()

let hello2 = { (name: String) -> String in
    return "Hello, \(name)" // 클로저는 전달인자 레이블 사용 불가
}
// hello2(name: "yunseok") 할 시 오류
hello2("yunseok")

func doSomething(closure: () -> ()){
    closure()
}
doSomething(closure:{ () -> () in
            print("hello")
})

doSomething() { // 클로저가 하나일 시 소괄호 생략 가능
    print("hello2")
}

func doSomething2() -> () -> () {
    return { () -> () in
        print("hello4")
        
    }
}
doSomething2()()

func doSomething2(success: () -> (), fail: () -> ()){
    
}
doSomething2 {
    <#code#>
} fail: {
    <#code#>
}

func doSomething3(closure: (Int, Int, Int) -> Int){
    closure(1,2,3)
}
doSomething3(closure: { (a, b, c) in
    return a+b+c
})
doSomething3(closure: {
    return $0 + $1 + $2
})
doSomething3(closure: { // 단일 리턴문이 아닐 경우 error
    $0 + $1 + $2
})
doSomething3() {
    $0 + $1 + $2
}
doSomething3 { // 클로저 표현 간소화
    $0 + $1 + $2
}
