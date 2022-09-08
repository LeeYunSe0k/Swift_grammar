/*
    주제 : 기본 데이터 타입 (dataType)
    날짜 : 2022.09.08
    작성자 : 이윤석
 */
import Foundation

/*
 Int : 64bit 정수형
 UInt : 부호가 없는 64bit 정수형
 Float : 32bit 부동 소수점
 Double : 64bit 부동 소수점
 Bool : true, false 값
 Character : 문자
 String : 문자열
 Any : 모든 타입을 지칭하는 키워드
 */

// 정수형에 실수를 대입 시 에러
// Int
var someInt: Int = -100
someInt = 100

// UInt
var someUInt: UInt = 200

// 실수형에 정수 입력 시 뒤에 .0이 자동으로 붙음
// Float
var someFloat: Float = 1.1
someFloat = 1
print(someFloat)

// Double
var someDouble: Double = 1.1
someDouble = 1

// Bool
var someBool: Bool = true
someBool = false

// Character
var someCharacter: Character = "가"
someCharacter = "A"
someCharacter = "😀"

// String
var someString: String = "안녕하세요 😀"

// 타입 추론
// 특정 타입을 명시하지 않아도 넣어지는 값에 따라 컴파일러가 자동으로 데이터 타입을 추론
var number = 10
