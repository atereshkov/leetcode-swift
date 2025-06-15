import XCTest

@testable import leetcode

class Length_of_Last_WordTests: XCTestCase {

    // Option 1

    func test58_Length_of_Last_WordTests1() {
        XCTAssertEqual(P58().lengthOfLastWord("Hello World"), 5)
        XCTAssertEqual(P58().lengthOfLastWord("   fly me   to   the moon  "), 4)
        XCTAssertEqual(P58().lengthOfLastWord("luffy is still joyboy"), 6)
    }

    // Option 2

    func test58_Length_of_Last_WordTests2() {
        XCTAssertEqual(P58().lengthOfLastWord2("Hello World"), 5)
        XCTAssertEqual(P58().lengthOfLastWord2("   fly me   to   the moon  "), 4)
        XCTAssertEqual(P58().lengthOfLastWord2("luffy is still joyboy"), 6)
    }

    // Option 3

    func test58_Length_of_Last_WordTests3() {
        XCTAssertEqual(P58().lengthOfLastWord3("Hello World"), 5)
        XCTAssertEqual(P58().lengthOfLastWord3("   fly me   to   the moon  "), 4)
        XCTAssertEqual(P58().lengthOfLastWord3("luffy is still joyboy"), 6)
    }
}
