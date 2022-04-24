/*
 컬렉션 타입 : 데이터들의 집합 묶음
 ---종류---
 Array : 데이터 타입의 값들을 순서대로 저장하는 리스트
 Dictionary : 순서없이 키와 값 한 상으로 데이터 저장
 Set : 값은 데이터 타입의 값을 순서없이 저장하는 리스트 (중복값 허용x)
 */
import UIKit

//Array
var numbers: Array<Int> = Array<Int>() // 빈 array 생성
numbers.append(1) // append로 값 추가
numbers.append(2)
numbers.append(3)

numbers[0] // index를 통해 접근 가능
numbers[1]

numbers.insert(4, at: 2) // insert를 통해 삽입 (값, at: 인덱스)
numbers

numbers.remove(at: 0) // remove(at: index)를 통해 제거
numbers

var names: [String] = [] // 축약 문법으로 생성 가능

// Dictionary
var dic: Dictionary<String, Int> = Dictionary<String, Int>()
var dic2: [String: Int] = ["이윤석": 1] // 축약 문법
dic2["이은재"] = 3
dic2["이하늘"] = 5
dic2
dic2["이은재"] = 8
dic2

dic2.removeValue(forKey: "이은재") // removeValue(forKey: 키값)
dic2

// Set
var set: Set = Set<Int>() // set는 축약형 선언이 없음

set.insert(10)
set.insert(20)
set.insert(30)
set.insert(30) // 중복된 값 insert 불가
set

set.remove(20) // 인덱스 값이 따로 없기 때문에 값을 직접 넣어 remove
set
