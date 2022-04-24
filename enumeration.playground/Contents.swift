/*
 열거형 : 연관성이 있는 값을 모아 놓은 것
 */
import Foundation

enum CompassPoint: String { // 이름이 대문자로 시작해야함
     // 다양한 타입의 원시값을 가지고 있음
    case north = "북"
    case south = "남"
    case east = "동"
    case west = "서" // = case north, south, east, west
}
var direction = CompassPoint.east
direction = .west

switch direction {
case .north:
    print(direction.rawValue) // rawValue를 이용해 원시값 출력
case .south:
    print(direction.rawValue)
case .east:
    print(direction.rawValue)
case .west:
    print(direction.rawValue)
}

let direction2 = CompassPoint(rawValue: "남")

enum PhoneError {
    case unknown
    case batteryLow(String)
}
let error = PhoneError.batteryLow("배터리가 곧 방전됩니다.")
// 연관 값 수출, if나 switch 사용
switch error {
case .batteryLow(let message):
    print(message)
case .unknown:
    print("알 수 없는 에러입니다.")
}
