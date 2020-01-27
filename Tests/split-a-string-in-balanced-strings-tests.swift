@testable
import Leetcode
import XCTest

extension SolutionTests {
    func testBalancedStringSplit1() {
        let input = "RLRRLLRLRL"
        let output = 4
        XCTAssertEqual(Solution().balancedStringSplit(input), output)
    }

    func testBalancedStringSplit2() {
        let input = "RLLLLRRRLR"
        let output = 3
        XCTAssertEqual(Solution().balancedStringSplit(input), output)
    }

    func testBalancedStringSplit3() {
        let input = "LLLLRRRR"
        let output = 1
        XCTAssertEqual(Solution().balancedStringSplit(input), output)
    }

    func testBalancedStringSplit4() {
        let input = "RLRRRLLRLL"
        let output = 2
        XCTAssertEqual(Solution().balancedStringSplit(input), output)
    }
}
