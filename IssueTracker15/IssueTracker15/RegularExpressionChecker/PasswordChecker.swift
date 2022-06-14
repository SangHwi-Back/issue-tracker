//
//  PasswordChecker.swift
//  IssueTracker15
//
//  Created by 박진섭 on 2022/06/14.
//

import Foundation

struct PasswordChecker {
    static func check(input: String) -> Bool {
        //6에서 12자 대문자,소문자,특수문자,숫자 하나씩 필수
        let pattern: String = "^(?=.*[A-Za-z])(?=.*\\d)(?=.*[$@$!%*#?&])[A-Za-z\\d$@$!%*#?&]{6,12}$"
        if let _ = input.range(of: pattern, options: .regularExpression) {
            return true
        } else {
            return false
        }
    }
}
