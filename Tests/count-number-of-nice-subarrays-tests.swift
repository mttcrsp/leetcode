@testable
import Leetcode
import XCTest

extension SolutionTests {
    func testNumberOfSubarrays1() {
        let input = ([1, 1, 2, 1, 1], 3)
        let output = 2
        XCTAssertEqual(Solution().numberOfSubarrays(input.0, input.1), output)
    }

    func testNumberOfSubarrays2() {
        let input = ([2, 4, 6], 1)
        let output = 0
        XCTAssertEqual(Solution().numberOfSubarrays(input.0, input.1), output)
    }

    func testNumberOfSubarrays3() {
        let input = ([2, 2, 2, 1, 2, 2, 1, 2, 2, 2], 2)
        let output = 16
        XCTAssertEqual(Solution().numberOfSubarrays(input.0, input.1), output)
    }
}
