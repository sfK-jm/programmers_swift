//
//  2-1.swift
//  programmers_swift
//
//  Created by 성준모 on 2022/10/26.
//
import Foundation

func solution(_ s:String) -> String {
    
    // 공백을 기준으로 단어를 나눠주기 위해 components메소드 사용
    // 공백을 기준으로 나눈 단어들을 당아주기 위해 words라는 이름의 상수 생성
    let words = s.components(separatedBy: " ")
    // words안ㅇ에 단어들의 글자들을 담을 characters을 만듬
    var charaters = Array(repeating: [String](), count: words.count)
    // 단어들을 연결시켜줄 answewr을 생성
    var answer = Array(repeating: String(), count: words.count)
    // for문을 이용하여 words안에 단어의 개수만큼 반복한다
    for w in 0..<words.count {
        // charaters를 words의 글자를 모두 소문자로 바꾼것으로 넣는다
        charaters[w] = words[w].map{String($0).lowercased()}
            // characters배열이 비어있지 않으면 charaters의 첫번째 글자를 대문자로 바꿈
        if charaters[w] != [] {
            // 나눈 단어의 맨 천 번째 글자를 대문자로 바꿔주기 위해 uppercased 메소드 사용
            charaters[w][0] = charaters[w][0].uppercased()
        }
        // 공백으로 문장을 다시 연결해주기 위해 joined 메소드 사용
        // answer에 characters의 글자들을 연결시킨 값을 넣어준다
        answer[w] = charaters[w].joined(separator: "")
    }
    
    return answer.joined(separator: " ")
}

var sentence : String = "for the last week"
var upper_sentence = solution(sentence)
print("\(upper_sentence)")
