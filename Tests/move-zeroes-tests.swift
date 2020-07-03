@testable
import Leetcode
import XCTest

extension SolutionTests {
    func testMoveZeroes1() {
        var input = [0, 1, 0, 3, 12]
        let output = [1, 3, 12, 0, 0]
        Solution().moveZeroes(&input)
        XCTAssertEqual(input, output)
    }

    func testMoveZeroes2() {
        var input = [0]
        let output = [0]
        Solution().moveZeroes(&input)
        XCTAssertEqual(input, output)
    }

    func testMoveZeroes3() {
        var input = [] as [Int]
        let output = [] as [Int]
        Solution().moveZeroes(&input)
        XCTAssertEqual(input, output)
    }

    func testMoveZeroes4() {
        var input = [0, 0, 0, 1, 2] as [Int]
        let output = [1, 2, 0, 0, 0] as [Int]
        Solution().moveZeroes(&input)
        XCTAssertEqual(input, output)
    }
}
