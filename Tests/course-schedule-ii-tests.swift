@testable
import Leetcode
import XCTest

extension SolutionTests {
    func testFindOrder1() {
        let input = (2, [[1, 0]])
        let output = [0, 1]
        XCTAssertEqual(Solution().findOrder(input.0, input.1), output)
    }

    func testFindOrder2() {
        let input = (4, [[1, 0], [2, 0], [3, 1], [3, 2]])
        let outputs = Set([[0, 2, 1, 3], [0, 1, 2, 3]])
        XCTAssert(outputs.contains(Solution().findOrder(input.0, input.1)))
    }

    func testFindOrder3() {
        let input = (2, [[0, 1]])
        let output = [1, 0]
        XCTAssertEqual(Solution().findOrder(input.0, input.1), output)
    }
}
