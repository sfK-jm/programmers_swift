//
//  2-3.swift
//  programmers_swift
//
//  Created by 성준모 on 2022/10/26.
//

import Foundation

 
func solution(_ A:[Int], _ B:[Int]) -> Int
{
    // a를 오름차순으로 정렬 b를 내림차순으로 정렬
    // zip를 이용하여 두 값을 묶어준다
    let a = zip(A.sorted(by:<) , B.sorted(by:>))

    // reduce(차례로 값을 더해주는 메소드)를 이용하여 차례로 A와 B를 곱한 값을 더해준다
    return  a.reduce(0) {$0 + (Int($1.0)*Int($1.1))}

}

func solution2(_ A:[Int], _ B:[Int]) -> Int{
    let sA = A.sorted { $0 < $1}
    let sB = B.sorted { $0 > $1 }
        var answer: Int = 0
     
        for i in 0..<sA.count {
            answer += sA[i] * sB[i]
        }
     
        return answer
}

var test_num1 = [1, 4, 2]
var test_num2 = [5,4,4]

var test1 = solution(test_num1, test_num2)
var test2 = solution2(test_num1, test_num2)

print("\(test1)")
print("\(test2)")
// 29
// 29
