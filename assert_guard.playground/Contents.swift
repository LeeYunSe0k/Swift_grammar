/*
 assert
 - 특정 조건을 체크하고, 조건이 성립되지 않으면 메세지를 출력하게 할 수 있는 함수
 - assert함수는 디버깅 모드에서만 동작 (주로 디버깅 중 조건 검증에 사용)
 guard
 - 뭔가를 검사하여 그 다음에 오는 코드를 실행할지 말지 결정하는 것
 - guard문에 주어진 조건문이 거짓일 때 구문 수행
 */
import Foundation
/*
var value = 0
              
assert(value == 0)

value = 2
assert(value == 0, "값이 0이 아닙니다.")
*/
 /*
 guard 조건 else {
    // 조건이 false면 else구문 실행
    // return or throw or break를 통해 이 후 코드를 실행하지 않도록 함
 */

func guardTest(value: Int?){
    guard let value = value else { return }
    print(value)
}
guardTest(value: 2)
guardTest(value: nil)


