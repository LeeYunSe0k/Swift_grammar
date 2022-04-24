/*
 class 클래스 이름: 부모클래스 이름{
    // 하위 클래스 정의
 }
 */
import Foundation

class Vehicle { // 베이스 클래스 (일반적인 클래스)
    var currentSpeed = 0.0
    // final 키워드 사용 시 오버라이딩 불가
    // ex) final var currentSpeed = 0.0
    var description: String{
        return "traveling at \(currentSpeed) miles per hour"
    }
    func makeNoise(){
        print("Sound on")
    }
}
class Bicycle: Vehicle{ // 자식 클래스
    var hasBasket = false
}
var bicycle = Bicycle()
bicycle.currentSpeed
bicycle.currentSpeed = 15.0
bicycle.currentSpeed

class Train: Vehicle {
    override func makeNoise() {
        super.makeNoise()
        print("choo choo")
    }
}
let train = Train()
train.makeNoise()

class Car: Vehicle {
    var gear = 1
    override var description: String{
        return super.description + " in gear \(gear)"
    }
}
let car = Car()
car.currentSpeed = 30.0
car.gear = 2
print(car.description)

class AutomaticCar: Car {
    override var currentSpeed: Double{
        didSet{
            gear = Int(currentSpeed / 10) + 1
        }
    }
}
let automatic = AutomaticCar()
automatic.currentSpeed = 35.0
print("AutomaticCar: \(automatic.description)")
