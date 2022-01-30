import XCTest

class LetterCombinationsOfAPhoneNumberTests: XCTestCase {
    func testLetterCombinations1() {
        let res = letterCombinations("23")
        XCTAssertEqual(res, ["ad","ae","af","bd","be","bf","cd","ce","cf"])
    }

    func testLetterCombinations2() {
        let res = letterCombinations("")
        XCTAssertEqual(res, [])
    }

    func testLetterCombinations3() {
        let res = letterCombinations("2")
        XCTAssertEqual(res, ["a","b","c"])
    }
}
