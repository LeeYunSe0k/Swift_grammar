/*
 구조체
 struct 구조체 이름{
    프로퍼티(멤버변수)와 메서드(멤버함수)
 }
 */
import UIKit
import Foundation

struct User{
    var name: String
    var age: Int
    
    func information(){
        print("\(name) \(age)")
    }
}
var user = User(name: "yunseok", age: 24)

user.name
user.name = "seok"
user.name
user.information()

/*
 클래스
 class 클래스 이름{
    프로퍼티, 메서드
 }
 */
class Dog{ // 생성자를 사용해야함
    var name: String = ""
    var age: Int = 0
    /*
     초기화(Intialization) : 클래스 구조체 또는 열거형의 인스턴스를 사용하기 위한 준비 과정
     */
    /*
     init(매개변수: 타입, ...){
        // 프로퍼티 초기화
        // 인스턴스 생성시 필요한 설정을 해주는 코드 작성
     }
     */
    init(name: String, age: Int){
        // 기본 생성자 (인스턴스가 생성되면 호출)
        self.name = name
        self.age = age
    }
    init(age: Int){
        self.name = "caca"
        self.age = age
    }
    deinit{ // 클래스에만 사용 가능
        print("deinit dog")
    }
    func introduce(){
        print("name: \(name), age: \(age)")
    }
}
var dog = Dog(name: "coco", age: 3)
var dog2 = Dog(age: 4)
dog.name
dog.age
dog.introduce()
dog2.introduce()

var dog3: Dog? = Dog(age: 5)
dog3 = nil

/*
프로퍼티의 종류 : 저장 프로퍼티, 연산 프로퍼티, 타입 프로퍼티
 */
// 저장 프로퍼티
struct Cat{
    var name: String
    let gender: String
}
var cat = Cat(name: "reon", gender: "Male")
print(cat)
cat.name = "레옹"

let cat2 = Cat(name: "kakao", gender: "Female")
// 인스턴스 객체가 let(상수)이기 떄문에 변경 불가
// 클래스는 상수로 인스턴스 객체를 선언해도 참조형이기때문에 변경 가능

// 연산 프로퍼티
struct Stock{
    var avgPrice: Int // 평균 단가
    var quantity: Int // 수량
    var purchasePrice: Int { // 매입가격
        get{
            return avgPrice * quantity
        }
        set(newPrice){ // 매개변수 이름을 설정하지 않을 시 = newValue
            avgPrice = newPrice / quantity
        }
    }
}
var stock = Stock(avgPrice: 2300, quantity: 3)
print(stock)
stock.purchasePrice
stock.purchasePrice = 3000
stock.avgPrice

// 프로퍼티 옵저버 (저장프로퍼티, 오버라이딩된 저장&연산 프로퍼티에서만 사용 가능)
class Account{
    var credit: Int = 0{
        willSet{ // 값이 지정되기 직전에 호출
            print("잔액이 \(credit)원에서 \(newValue)원으로 변경될 예정입니다.")
        }
        didSet{ // 값이 지정된 후에 호출
            print("잔액이 \(oldValue)원에서 \(credit)원으로 변경되었습니다.")
        }
    }
}
var account = Account()
account.credit = 1000

// 타입 프로퍼티 (인스턴스 생성 없이 객체 내 프로퍼티에 접근이 가능하도록 함)
// 저장, 연산 프로퍼티에서만 사용 가능
// static을 사용하여 정의
struct SomeStructure{
    static var storedTypeProperty = "Some value" // 스토어
    static var computedTypeProperty: Int{ // 컴퓨티드 프로퍼티
        return 1
    }
}
SomeStructure.computedTypeProperty
SomeStructure.storedTypeProperty
SomeStructure.storedTypeProperty = "Hello"
SomeStructure.storedTypeProperty
/*
 클래스(참조타입) vs 구조체(값 타입)
 */
class SomeClass{
    var count: Int = 0
}
struct SomeStruct{
    var count: Int = 0
}
var class1 = SomeClass()
var class2 = class1
var class3 = class1

class3.count = 2
class1.count // 참조 타입이므로 참조된 인스턴스의 값이 모두 변경됨

var struct1 = SomeStruct()
var struct2 = struct1
var struct3 = struct1

struct2.count = 3
struct3.count = 4

struct1.count
struct2.count
struct3.count
