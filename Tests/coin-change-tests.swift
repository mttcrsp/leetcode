@testable
import Leetcode
import XCTest

extension SolutionTests {
    func testCoinChange1() {
        let input = ([1, 2, 5], 11)
        let output = 3
        XCTAssertEqual(Solution().coinChange(input.0, input.1), output)
    }

    func testCoinChange2() {
        let input = ([2], 3)
        let output = -1
        XCTAssertEqual(Solution().coinChange(input.0, input.1), output)
    }

    func testCoinChange3() {
        let input = ([2], 0)
        let output = 0
        XCTAssertEqual(Solution().coinChange(input.0, input.1), output)
    }

    func testCoinChange4() {
        let input = ([1], 1)
        let output = 1
        XCTAssertEqual(Solution().coinChange(input.0, input.1), output)
    }
}
