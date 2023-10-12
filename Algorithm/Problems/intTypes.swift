//
//  intTypes.swift
//  Algorithm
//
//  Created by jonghyun baik on 2023/10/10.
//

import Foundation

/**
var x1 = 0, x2 = 1, x3 = 2
var b1, b2, b3 : Int

let b = x1 + x2

//10진수
let decInt = 10
//8진수
let octInt = 0o12
//16진수
let hexInt = 0xa
//2진수
let binInt = 0b1010
print(decInt, octInt, hexInt, binInt)

//튜플
let myTuple = (1, 2, 3, "abc")
print(myTuple)

(b1, b2, _) = (x1, x2, x3)
print(b1, b2)

//타입 별칭 ( 타입의 별명을 지정해 사용해주는 방법 )
typealias Sabub = Int
let p1 : Sabub = 12
print(p1, type(of: p1))

typealias Person = (String, Int, Int)
let p2 : Person = ("hello", 12, 1)
print(p2, type(of: p2))

// Optional
var index: Int?
if index == 0 {
    print(0)
}
if index == nil {
    print("nil")
}

// 옵셔널 바인딩
//index = 100
if let cont = index {
    print(cont)
} else {
    print("index nil")
}
// cont 에 값이 할당 될 경우에만 if 구문을 실행한다
// 위에 경우 index 가 nil 일때에 cont에 값이 할당되지 않아 구문이 실행되지 않는다.

// 옵셔널 대체값 지정
let index2 = index ?? 0
print(index2)

// 강제 옵셔널 -> 이 경우 index에 nil 값이 들어가면 에러가 발생한다.
// 그렇기에 완전히 값이 조건에 맞을 경우에만 쓰지만
// 에러 방지를 위해 많이 사용하지 않는다.
// Thread 1: Fatal error: Unexpectedly found nil while unwrapping an Optional value
//print(index!)

var pStr1 : String? = "hahaha"

//let aStr : String = pStr1
let aStr1 : String = pStr1!

//Value of optional type 'String?' must be unwrapped to a value of type 'String'
// 위처럼 옵셔널 타입으로 변수를 선언한 경우 위와같은 주의가 뜨게 된다.

var pStr2 : String! = "hehehe"

let aStr2 : String = pStr2
 */
