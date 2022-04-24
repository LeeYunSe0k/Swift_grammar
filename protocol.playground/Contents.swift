/*
 프로토콜 : 특정 역할을 하기 위한 메서드, 프로퍼티, 기타 요구사항 등의 청사진
 */
/*
 protocol 이름 {
 
 }
 */
import Foundation

protocol FirstProtocol {
    var name: Int { get set }
    var age: Int { get }
}
protocol AnotherProtocol {
    static var someTypeProperty: Int { get set }
}
protocol FullyNames {
    var fullName: String { get set }
    func printFullName()
}
struct Person: FullyNames {
    var fullName: String
    func printFullName() {
        print(fullName)
    }
}
protocol SomeProtocol3 {
    func someTypeMethod()
}
protocol SomeProtocol4 {
    init(someParameter: Int)
}
protocol SOmeProtocol5 {
    init()
}
/*
 class Some Class: SomeSuperclass, FirstProtocol , ... {
 }
 */
class SomeClass: SOmeProtocol5 {
    required init(){ // 구조체에선 필요 없지만 클래스에선 필요함
        
    }
}
