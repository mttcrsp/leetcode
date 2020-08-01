@testable
import Leetcode
import XCTest

extension SolutionTests {
    func testSortedSquares1() {
        let input = [-4, -1, 0, 3, 10]
        let output = [0, 1, 9, 16, 100]
        XCTAssertEqual(Solution().sortedSquares(input), output)
    }

    func testSortedSquares2() {
        let input = [-7, -3, 2, 3, 11]
        let output = [4, 9, 9, 49, 121]
        XCTAssertEqual(Solution().sortedSquares(input), output)
    }

    func testSortedSquares3() {
        let input = [-7, -3]
        let output = [9, 49]
        XCTAssertEqual(Solution().sortedSquares(input), output)
    }

    func testSortedSquares4() {
        let input = [] as [Int]
        let output = [] as [Int]
        XCTAssertEqual(Solution().sortedSquares(input), output)
    }

    func testSortedSquares5() {
        let input = [0, 0, 1]
        let output = [0, 0, 1]
        XCTAssertEqual(Solution().sortedSquares(input), output)
    }
}