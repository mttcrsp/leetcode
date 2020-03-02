@testable
import Leetcode
import XCTest

extension SolutionTests {
    func testKWeakestRows1() {
        let input = (
            [
                [1, 1, 0, 0, 0],
                [1, 1, 1, 1, 0],
                [1, 0, 0, 0, 0],
                [1, 1, 0, 0, 0],
                [1, 1, 1, 1, 1],
            ],
            3
        )
        let output = [2, 0, 3]
        XCTAssertEqual(Set(Solution().kWeakestRows(input.0, input.1)), Set(output))
    }

    func testKWeakestRows2() {
        let input = (
            [
                [1, 0, 0, 0],
                [1, 1, 1, 1],
                [1, 0, 0, 0],
                [1, 0, 0, 0],
            ],
            2
        )
        let output = [0, 2]
        XCTAssertEqual(Solution().kWeakestRows(input.0, input.1), output)
    }

    func testKWeakestRows3() {
        let input = (
            [
                [0, 0, 0, 0, 0],
                [0, 0, 0, 0, 0],
                [0, 0, 0, 0, 0],
                [0, 0, 0, 0, 0],
                [0, 0, 0, 0, 0],
            ],
            3
        )
        let output = [0, 1, 2]
        XCTAssertEqual(Set(Solution().kWeakestRows(input.0, input.1)), Set(output))
    }

    func testKWeakestRows4() {
        let input = (
            [
                [1, 1, 1, 1, 1, 1],
                [1, 1, 1, 1, 1, 1],
                [1, 1, 1, 1, 1, 1],
            ],
            1
        )
        let output = [0]
        XCTAssertEqual(Set(Solution().kWeakestRows(input.0, input.1)), Set(output))
    }
}
