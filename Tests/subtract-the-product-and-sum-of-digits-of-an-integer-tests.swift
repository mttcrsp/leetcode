@testable
import Leetcode
import XCTest

extension SolutionTests {
    func testSubtractProductAndSum1() {
        let input = 234
        let output = 15
        XCTAssertEqual(Solution().subtractProductAndSum(input), output)
    }

    func testSubtractProductAndSum2() {
        let input = 4421
        let output = 21
        XCTAssertEqual(Solution().subtractProductAndSum(input), output)
    }
}
