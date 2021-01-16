@testable
import Leetcode
import XCTest

extension SolutionTests {
  func testPushdominoes1() {
    let input = ".L.R...LR..L.."
    let output = "LL.RR.LLRRLL.."
    XCTAssertEqual(Solution().pushDominoes(input), output)
  }

  func testPushdominoes2() {
    let input = "RR.L"
    let output = "RR.L"
    XCTAssertEqual(Solution().pushDominoes(input), output)
  }
}
