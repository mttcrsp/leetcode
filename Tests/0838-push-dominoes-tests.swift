@testable
import Leetcode
import XCTest

final class PushDominoesTests: XCTestCase {
  func testPushdominoes1() {
    let input = ".L.R...LR..L.."
    let output = "LL.RR.LLRRLL.."
    XCTAssertEqual(PushDominoes().pushDominoes(input), output)
  }

  func testPushdominoes2() {
    let input = "RR.L"
    let output = "RR.L"
    XCTAssertEqual(PushDominoes().pushDominoes(input), output)
  }
}
