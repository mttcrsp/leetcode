@testable
import Leetcode
import XCTest

extension SolutionTests {
    func testCheckIfExists1() {
        let input = [10, 2, 5, 3]
        let output = true
        XCTAssertEqual(Solution().checkIfExist(input), output)
    }

    func testCheckIfExists2() {
        let input = [7, 1, 14, 11]
        let output = true
        XCTAssertEqual(Solution().checkIfExist(input), output)
    }

    func testCheckIfExists3() {
        let input = [3, 1, 7, 11]
        let output = false
        XCTAssertEqual(Solution().checkIfExist(input), output)
    }

    func testCheckIfExists4() {
        let input = [-2, 0, 10, -19, 4, 6, -8]
        let output = false
        XCTAssertEqual(Solution().checkIfExist(input), output)
    }

    func testCheckIfExists5() {
        let input = [0, 0]
        let output = true
        XCTAssertEqual(Solution().checkIfExist(input), output)
    }
}
