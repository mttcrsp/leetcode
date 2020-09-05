@testable
import Leetcode
import XCTest

extension SolutionTests {
    func testFindAnagrams1() {
        let input = ("abababababa", "aabb")
        let output = [0, 1, 2, 3, 4, 5, 6, 7]
        XCTAssertEqual(Solution().findAnagrams(input.0, input.1), output)
    }

    func testFindAnagrams2() {
        let input = ("aaaa", "aa")
        let output = [0, 1, 2]
        XCTAssertEqual(Solution().findAnagrams(input.0, input.1), output)
    }

    func testFindAnagrams3() {
        let input = ("agoiuhr", "ggrhina")
        let output = [] as [Int]
        XCTAssertEqual(Solution().findAnagrams(input.0, input.1), output)
    }

    func testFindAnagrams4() {
        let input = ("zaazbaazbazzz", "aab")
        let output = [4]
        XCTAssertEqual(Solution().findAnagrams(input.0, input.1), output)
    }

    func testFindAnagrams5() {
        let input = ("cbaebabacd", "abc")
        let output = [0, 6]
        XCTAssertEqual(Solution().findAnagrams(input.0, input.1), output)
    }

    func testFindAnagrams6() {
        let input = ("abab", "ab")
        let output = [0, 1, 2]
        XCTAssertEqual(Solution().findAnagrams(input.0, input.1), output)
    }
}
