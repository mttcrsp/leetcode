@testable
import Leetcode
import XCTest

extension SolutionTests {
    func testOrangesRotting1() {
        let input = [[2, 1, 1], [1, 1, 0], [0, 1, 1]]
        let output = 4
        XCTAssertEqual(Solution().orangesRotting(input), output)
    }

    func testOrangesRotting2() {
        let input = [[1], [1], [1], [1]]
        let output = -1
        XCTAssertEqual(Solution().orangesRotting(input), output)
    }

    func testOrangesRotting3() {
        let input = [[0, 2]]
        let output = 0
        XCTAssertEqual(Solution().orangesRotting(input), output)
    }

    func testOrangesRotting4() {
        let input = [[2, 1, 1], [0, 1, 1], [1, 0, 1]]
        let output = -1
        XCTAssertEqual(Solution().orangesRotting(input), output)
    }

    func testOrangesRotting5() {
        let input = [[0]]
        let output = 0
        XCTAssertEqual(Solution().orangesRotting(input), output)
    }

    func testOrangesRotting6() {
        let input = [[2], [2], [1], [0], [1], [1]]
        let output = -1
        XCTAssertEqual(Solution().orangesRotting(input), output)
    }
}
