@testable
import Leetcode
import XCTest

extension SolutionTests {
    func testGetRow1() {
        let input = 0
        let output = [1]
        XCTAssertEqual(Solution().getRow(input), output)
    }

    func testGetRow2() {
        let input = 1
        let output = [1, 1]
        XCTAssertEqual(Solution().getRow(input), output)
    }

    func testGetRow3() {
        let input = 2
        let output = [1, 2, 1]
        XCTAssertEqual(Solution().getRow(input), output)
    }

    func testGetRow4() {
        let input = 3
        let output = [1, 3, 3, 1]
        XCTAssertEqual(Solution().getRow(input), output)
    }

    func testGetRow5() {
        let input = 5
        let output = [1, 5, 10, 10, 5, 1]
        XCTAssertEqual(Solution().getRow(input), output)
    }

    func testGetRow6() {
        let input = 8
        let output = [1, 8, 28, 56, 70, 56, 28, 8, 1]
        XCTAssertEqual(Solution().getRow(input), output)
    }
}
