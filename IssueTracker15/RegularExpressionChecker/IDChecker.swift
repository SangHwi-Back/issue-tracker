//
//  IDChecker.swift
//  IssueTracker15
//
//  Created by 박진섭 on 2022/06/14.
//

import Foundation

struct IDChecker {
    static func check(input: String) -> Bool {
        let pattern: String = "^[a-zA-Z0-9]{6,16}@" // @ 이전 ID입력값이 6 ~ 16개
        if let _ = input.range(of: pattern, options: .regularExpression) {
            return true
        } else {
            return false
        }
    }
}
