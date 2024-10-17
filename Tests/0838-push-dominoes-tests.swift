@testable
import Leetcode
import Testing

@Suite
struct PushDominoesTests {
  @Test func testPushdominoes1() {
    let input = ".L.R...LR..L.."
    let output = "LL.RR.LLRRLL.."
    #expect(PushDominoes().pushDominoes(input) == output)
  }

  @Test func testPushdominoes2() {
    let input = "RR.L"
    let output = "RR.L"
    #expect(PushDominoes().pushDominoes(input) == output)
  }
}
