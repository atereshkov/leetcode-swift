import XCTest

@testable import leetcode

class Ransom_NoteTests: XCTestCase {

    // Option 1

    func test383_Ransom_NoteTests1() {
        XCTAssertEqual(P383().canConstruct("a", "b"), false)
        XCTAssertEqual(P383().canConstruct("aa", "ab"), false)
        XCTAssertEqual(P383().canConstruct("aa", "aab"), true)
    }

    // Option 2

    func test383_Ransom_NoteTests2() {
        XCTAssertEqual(P383().canConstruct2("a", "b"), false)
        XCTAssertEqual(P383().canConstruct2("aa", "ab"), false)
        XCTAssertEqual(P383().canConstruct2("aa", "aab"), false)
    }
}
