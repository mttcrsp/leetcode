@testable
import Leetcode
import XCTest

extension SolutionTests {
    func testFourSum1() {
        let input = ([1, 0, -1, 0, -2, 2], 0)
        let output: Set<[Int]> = [[-1, 0, 0, 1], [-2, -1, 1, 2], [-2, 0, 0, 2]]
        XCTAssertEqual(Set(Solution().fourSum(input.0, target: input.1)), output)
    }

    func testFourSum2() {
        let input = ([0, 0, 0, 0], 1)
        let output: Set<[Int]> = []
        XCTAssertEqual(Set(Solution().fourSum(input.0, target: input.1)), output)
    }
}
