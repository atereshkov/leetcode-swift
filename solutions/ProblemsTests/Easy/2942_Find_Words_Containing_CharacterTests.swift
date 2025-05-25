import XCTest

@testable import leetcode

class Find_Words_Containing_CharacterTests: XCTestCase {

    // Option 1

    func test2942_Find_Words_Containing_CharacterTests1() {
        XCTAssertEqual(P2942().findWordsContaining(["leet", "code"], "e"), [0, 1])
        XCTAssertEqual(P2942().findWordsContaining(["abc","bcd","aaaa","cbc"], "a"), [0, 2])
        XCTAssertEqual(P2942().findWordsContaining(["abc","bcd","aaaa","cbc"], "z"), [])
        XCTAssertEqual(P2942().findWordsContaining([], "a"), [])
    }
}
