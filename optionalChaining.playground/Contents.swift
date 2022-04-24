/*
 옵셔널 체이닝 : 옵셔널에 속해 있는 nil일지도 모르는 프로퍼티, 메서드, 서브스크립션 등을 가져오거나 호출할 때 사용할 수 있는 일련의 과정
 */
import Foundation

struct Developer {
    let name: String
}
struct Company {
    let name: String
    var developer: Developer?
}
var developer = Developer(name: "han")
var company = Company(name: "yunseok", developer: developer)
print(company.developer)
print(company.developer?.name) // 값이 nil이 될 수도 있어 옵셔널로 감싸져 있음.
print(company.developer!.name) // !로 옵셔녈 체이닝 시 강제 바인딩
