/*
 옵셔널 : 값이 있을 수도 없을 수도 있음.
 var name: String? = nil
 var num: Int?
 ?를 붙여주므로써 옵셔널 변수 지정
 일반 변수에는 옵셔널변수 대입 불가
 */
import UIKit

var name: String?
var optionalName: String? = "yunseok" // 값 넣어주는 것 가능
print(optionalName)
/*
 옵셔널 바인딩
 옵셔널 해제 방법 : 명시적 해제(강제 해제, 비강제 해제(옵셔널 바인딩)),     묵시적 해제 (컴파일러에 의한 자동 해제, 옵셔널의 묵시적 해제)
 */
var number: Int? = 3
print(number)
print(number!) // ! -> 옵셔널 강제해제 연산자 (값이 nil일 시 error)

if let result = number { // 옵셔널 바인딩 (변수, 상수로 if에 할당)
    print(result)
}
func test(){
    // guard로 옵셔널 바인딩 시 guard문 다음 함수 전체에서 사용 가능
    let num: Int? = 5
    guard let result = num else {return}
    print(result)
}
test()
// 컴파일러에 의한 자동해제 (비교연산자와 비교 시 옵셔널 값 자동 해제
let value: Int? = 6
if value == 6{
    print("value = 6")
}
else{
    print("value != 6")
}
// 묵시적 해제 (값을 사용할 땐 자동으로 해제)
let string = "12"
var stringToInt: Int! = Int(string) // ! 사용 시 묵시적 해제
print(stringToInt + 1)

