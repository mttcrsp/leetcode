@testable
import Leetcode
import XCTest

extension SolutionTests {
    func testFindJudge1() {
        let input = (2, [[1, 2]])
        let output = 2
        XCTAssertEqual(Solution().findJudge(input.0, input.1), output)
    }

    func testFindJudge2() {
        let input = (3, [[1, 3], [2, 3]])
        let output = 3
        XCTAssertEqual(Solution().findJudge(input.0, input.1), output)
    }

    func testFindJudge3() {
        let input = (3, [[1, 3], [2, 3], [3, 1]])
        let output = -1
        XCTAssertEqual(Solution().findJudge(input.0, input.1), output)
    }

    func testFindJudge4() {
        let input = (1, [] as [[Int]])
        let output = 1
        XCTAssertEqual(Solution().findJudge(input.0, input.1), output)
    }
}
