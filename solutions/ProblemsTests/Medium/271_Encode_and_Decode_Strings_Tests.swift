import XCTest

@testable import leetcode

class EncodeAndDecodeStringsTests: XCTestCase {

    // Option 1

    func testEncodeAndDecodeStrings1() {
        XCTAssertEqual(encodeStr(["lint","code","love","you"]), "4|lint4|code4|love3|you")
        XCTAssertEqual(decodeStr("4|lint4|code4|love3|you"), ["lint", "code", "love", "you"])
    }

    func testEncodeAndDecodeStrings2() {
        XCTAssertEqual(encodeStr(["olalalalala"]), "11|olalalalala")
        XCTAssertEqual(decodeStr("11|olalalalala"), ["olalalalala"])
    }

    func testEncodeAndDecodeStrings3() {
        XCTAssertEqual(encodeStr(["asd|dk","privetqwe"]), "6|asd|dk9|privetqwe")
        XCTAssertEqual(decodeStr("6|asd|dk9|privetqwe"), ["asd|dk", "privetqwe"])
    }

    func testEncodeAndDecodeStrings4() {
        XCTAssertEqual(encodeStr(["1|asd|dk","privetqwe"]), "8|1|asd|dk9|privetqwe")
        XCTAssertEqual(decodeStr("8|1|asd|dk9|privetqwe"), ["1|asd|dk", "privetqwe"])
    }

    // Option 2

    func testEncodeAndDecodeStrings21() {
        XCTAssertEqual(encodeStr2(["lint","code","love","you"]), "4,4,4,3#lintcodeloveyou")
        XCTAssertEqual(decodeStr2("4,4,4,3#lintcodeloveyou"), ["lint", "code", "love", "you"])
    }

    func testEncodeAndDecodeStrings22() {
        XCTAssertEqual(encodeStr2(["olalalalala"]), "11#olalalalala")
        XCTAssertEqual(decodeStr2("11#olalalalala"), ["olalalalala"])
    }

    func testEncodeAndDecodeStrings23() {
        XCTAssertEqual(encodeStr2(["asd#dk","privetqwe"]), "6,9#asd#dkprivetqwe")
        XCTAssertEqual(decodeStr2("6,9#asd#dkprivetqwe"), ["asd#dk", "privetqwe"])
    }

    func testEncodeAndDecodeStrings24() {
        XCTAssertEqual(encodeStr2(["1#asd#dk","privetqwe"]), "8,9#1#asd#dkprivetqwe")
        XCTAssertEqual(decodeStr2("8,9#1#asd#dkprivetqwe"), ["1#asd#dk", "privetqwe"])
    }

    // Option 3

    func testEncodeAndDecodeStrings31() {
        XCTAssertEqual(encodeStr3(["lint","code","love","you"]), "4,4,4,3|lintcodeloveyou")
        XCTAssertEqual(decodeStr3("4,4,4,3|lintcodeloveyou"), ["lint", "code", "love", "you"])
    }

    func testEncodeAndDecodeStrings32() {
        XCTAssertEqual(encodeStr3(["olalalalala"]), "11|olalalalala")
        XCTAssertEqual(decodeStr3("11|olalalalala"), ["olalalalala"])
    }

    func testEncodeAndDecodeStrings33() {
        XCTAssertEqual(encodeStr3(["asd|dk","privetqwe"]), "6,9|asd|dkprivetqwe")
        XCTAssertEqual(decodeStr3("6,9|asd|dkprivetqwe"), ["asd|dk", "privetqwe"])
    }

    func testEncodeAndDecodeStrings34() {
        XCTAssertEqual(encodeStr3(["1|asd|dk","privetqwe"]), "8,9|1|asd|dkprivetqwe")
        XCTAssertEqual(decodeStr3("8,9|1|asd|dkprivetqwe"), ["1|asd|dk", "privetqwe"])
    }
}
