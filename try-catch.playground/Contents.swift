/*
 try-catch : 에러 처리로써 에러가 발생한 상황에 대응하는 과정
 swift 에러 처리 : 발생, 감지, 전파, 조작
 swift 오류 처리 방법
 1) 함수에서 발생한 오류를 해당 함수를 호출한 코드에 전달
 2) do-catch 구문을 이용해 처리
 3) 옵셔널 값으로 오류 처리
 4) 오류가 발생하지 않을 것이라고 확신하는 방법
 */
import Foundation

enum PhoneError: Error{
    case unknown
    case batteryLow(batteryLevel: Int)
}
// throw PhoneError.batteryLow(batteryLevel: 20) // 에러를 발생시킴

func checkPhoneBatteryStatus(batteryLevel: Int) throws -> String{
    guard batteryLevel != -1 else { throw PhoneError.unknown }
    guard batteryLevel > 20 else { throw PhoneError.batteryLow(batteryLevel: 20)}
    return "배터리 상태가 정상입니다."
}
/*
 do {
    try 오류 발생 가능 코드
 } catch 오류 패턴 {
    처리코드
 }
 */
do {
    try checkPhoneBatteryStatus(batteryLevel: 20)
} catch PhoneError.unknown {
    print("알 수 없는 에러입니다.")
} catch PhoneError.batteryLow(let batteryLevel){
    print("배터리 전원 부족 남은 배터리 : \(batteryLevel)%")
} catch {
    print("그 외 오류 발생 : \(error)")
}
// try? 사용
let status = try? checkPhoneBatteryStatus(batteryLevel: 30)
print(status)

let status2 = try! checkPhoneBatteryStatus(batteryLevel: 50)
print(status) // 에러를 절대 나지 않을 것이라고 확신할 때 사용
// 에러 발생 시 강제 종료
