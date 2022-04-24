// 조건문 : if, switch, guard
import UIKit
/*
 if조건문
 if 조건식 {
    실행할 구문
 }
 else if 조건식2 {
    조건식2를 만족할 때 실행
 else{
    if조건이 모두 만족하지 않을 시 실행
 }
 */
let age = 20

if age < 19 {
    print("미성년자 입니다.")
}
else{
    print("성년자")
}
let animal = "cat"

if animal == "dog"{
    print("강아지 사료 주기")
}
else if animal == "cat"{
    print("고양이 사료 주기")
}
else{
    print("해당하는 동물 사료가 없습니다.")
}
/*
 switch 조건문
 switch 비교 대상{
    case 패턴1:
    // 패턴1과 일치할 때 실행
    case 패턴2, 패턴3:
    // 패턴2, 3이 일치할 때 실행
    default:
    // 어느 패턴과도 일치하지 않을 때 실행
 }
 */
let color = "red"

switch color{
case "blue":
    print("파란색입니다.")
case "green":
    print("초록색입니다.")
case "yellow":
    print("노란색입니다.")
default:
    print("찾는 색상이 없습니다.")
}
let temp = 30

switch temp{
case -20...9: // 범위 연산자 사용
    print("winter")
case 10...14:
    print("fall")
case 15...25:
    print("spring")
case 26...35:
    print("summer")
default:
    print("이상 기후입니다.")
}

//반복문 : for-in, while, repeat-while
/*
 for 루프상수 in 순회대상 {
    실행할 구문
 }
 */
for i in 1...4{
    print(i)
}
let array = [1,2,3,4,5]

for i in array{
    print(i)
}
/*
 while 조건식{
    실행구문
 }
 */
var number = 5

while number < 10 {
    number += 1
}
number
/*
 do-while과 유사한 반복문
 repeat{
    실행 구문
 }while 조건식
 */
var x = 6

repeat {
    x += 2
} while x < 5
print(x)
