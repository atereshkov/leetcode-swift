import XCTest

@testable import leetcode

class EncodeAndDecodeStringsTests: XCTestCase {
    func testEncodeAndDecodeStrings1() {
        XCTAssertEqual(encodeStr(["lint","code","love","you"]), "")
        XCTAssertEqual(decodeStr("123"), ["123"])
    }
}
