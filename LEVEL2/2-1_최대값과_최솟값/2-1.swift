//
//  2-1.swift
//  programmers_swift
//
//  Created by 성준모 on 2022/10/26.
//
import Foundation

func solution(_ s:String) -> String {
    // 입력된 문자열 리스트를 공백문자를 기준으로 분류
    let list = s.split(separator: " ")
    // 분류된 문자열 리스트를 숫자 배열로 전환
    let numbers = list.map{ Int($0)! }
    // 숫자 배열 중에서 가장 작은 숫자 정수를 찾음
    let min = numbers.min()!
    // 숫자 배열 중에서 가장 큰 숫자 정수를 찾음
    let max = numbers.max()!
    
    return "\(min) \(max)"
}

var num1 : String  = "1 2 3 4 5"
var num = solution(num1)
print ("\(num)")

// 1 5
