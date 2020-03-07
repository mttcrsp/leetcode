@testable
import Leetcode
import XCTest

extension SolutionTests {
    func testIsSubsequence1() {
        let input = ("abc", "ahbgdc")
        let output = true
        XCTAssertEqual(Solution().isSubsequence(input.0, input.1), output)
    }

    func testIsSubsequence2() {
        let input = ("axc", "ahbgdc")
        let output = false
        XCTAssertEqual(Solution().isSubsequence(input.0, input.1), output)
    }

    func testIsSubsequence3() {
        let input = ("ciao", "ciciao")
        let output = true
        XCTAssertEqual(Solution().isSubsequence(input.0, input.1), output)
    }

    func testIsSubsequence4() {
        let input = ("", "")
        let output = true
        XCTAssertEqual(Solution().isSubsequence(input.0, input.1), output)
    }

    func testIsSubsequence5() {
        let input = ("", "asdf")
        let output = true
        XCTAssertEqual(Solution().isSubsequence(input.0, input.1), output)
    }

    func testIsSubsequence6() {
        let input = ("asdf", "")
        let output = false
        XCTAssertEqual(Solution().isSubsequence(input.0, input.1), output)
    }
}
