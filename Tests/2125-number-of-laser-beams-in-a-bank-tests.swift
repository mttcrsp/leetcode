@testable
import Leetcode
import Testing

@Suite
struct NumberOfLaserBeamsInABankTests {
  @Test func testNumberofbeams1() {
    let input = ["011001", "000000", "010100", "001000"]
    let output = 8
    #expect(NumberOfLaserBeamsInABank().numberOfBeams(input) == output)
  }

  @Test func testNumberofbeams2() {
    let input = ["000", "111", "000"]
    let output = 0
    #expect(NumberOfLaserBeamsInABank().numberOfBeams(input) == output)
  }

  @Test func testNumberofbeams3() {
    let input = ["011001", "001000", "010100", "001000"]
    let output = 7
    #expect(NumberOfLaserBeamsInABank().numberOfBeams(input) == output)
  }

  @Test func testNumberofbeams4() {
    let input = ["0000"]
    let output = 0
    #expect(NumberOfLaserBeamsInABank().numberOfBeams(input) == output)
  }
}
