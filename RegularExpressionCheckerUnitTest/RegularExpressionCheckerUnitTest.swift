//
//  RegularExpressionCheckerUnitTest.swift
//  RegularExpressionCheckerUnitTest
//
//  Created by 박진섭 on 2022/06/14.
//

import XCTest

class RegularExpressionCheckerUnitTest: XCTestCase {

    func testIDChecker() {
        let unverifiedIDs: [String] = ["abcde@", // Too short
                                       "abcdefghijklmnopqrstu@", // Too long
                                       "!123asbdg@"] // 특수문자
        let verifiedID: String = "abcd0000@"
        
        for id in unverifiedIDs {
            XCTAssertFalse(IDChecker.check(input: id))
        }
        XCTAssertTrue(IDChecker.check(input: verifiedID))
    }

    func testPasswordChecker() {
        let unverifiedPasswords: [String] = ["Ab1!e", // Short
                                             "Abc2123defghijklmnopqrstu@", // Long
                                             "Ab1e0000",    // 특수문자
                                             "Abe!!!!!!!",  // 숫자
                                             "abe!!!!!!!",  // 대문자
                                             "ABE!!!!!!!"]  // 소문자
        
        let verifiedPassword: String = "Ab1d0000!!"
        
        for password in unverifiedPasswords {
            XCTAssertFalse(PasswordChecker.check(input: password))
        }
        XCTAssertTrue(PasswordChecker.check(input: verifiedPassword))
    }
}
