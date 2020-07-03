@testable
import Leetcode
import XCTest

extension SolutionTests {
    func testReplaceElements1() {
        let input = [17, 18, 5, 4, 6, 1]
        let output = [18, 6, 6, 6, 1, -1]
        XCTAssertEqual(Solution().replaceElements(input), output)
    }
}
