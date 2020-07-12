@testable
import Leetcode
import XCTest

extension SolutionTests {
    func testMaxFreq1() {
        let input = ("aababcaab", 2, 3, 4)
        let output = 2
        XCTAssertEqual(Solution().maxFreq(input.0, input.1, input.2, input.3), output)
    }

    func testMaxFreq2() {
        let input = ("aaaa", 1, 3, 3)
        let output = 2
        XCTAssertEqual(Solution().maxFreq(input.0, input.1, input.2, input.3), output)
    }

    func testMaxFreq3() {
        let input = ("aabcabcab", 2, 2, 3)
        let output = 3
        XCTAssertEqual(Solution().maxFreq(input.0, input.1, input.2, input.3), output)
    }

    func testMaxFreq4() {
        let input = ("abcde", 2, 3, 3)
        let output = 0
        XCTAssertEqual(Solution().maxFreq(input.0, input.1, input.2, input.3), output)
    }
}
