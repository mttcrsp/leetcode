@testable
import Leetcode
import XCTest

extension SolutionTests {
    func testLongestPalindrome1() {
        let input = "abccccdd"
        let output = 7
        XCTAssertEqual(Solution().longestPalindrome(input), output)
    }

    func testLongestPalindrome2() {
        let input = "aabccccdd"
        let output = 9
        XCTAssertEqual(Solution().longestPalindrome(input), output)
    }

    func testLongestPalindrome3() {
        let input = ""
        let output = 0
        XCTAssertEqual(Solution().longestPalindrome(input), output)
    }
}
