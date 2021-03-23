@testable
import Leetcode
import XCTest

final class FindKthBitInNthBinaryStringTests: XCTestCase {
  func testFindKthBit1() {
    let input = (3, 1)
    let output: Character = "0"
    XCTAssertEqual(FindKthBitInNthBinaryString().findKthBit(input.0, input.1), output)
  }

  func testFindKthBit2() {
    let input = (4, 11)
    let output: Character = "1"
    XCTAssertEqual(FindKthBitInNthBinaryString().findKthBit(input.0, input.1), output)
  }

  func testFindKthBit3() {
    let input = (1, 1)
    let output: Character = "0"
    XCTAssertEqual(FindKthBitInNthBinaryString().findKthBit(input.0, input.1), output)
  }

  func testFindKthBit4() {
    let input = (2, 3)
    let output: Character = "1"
    XCTAssertEqual(FindKthBitInNthBinaryString().findKthBit(input.0, input.1), output)
  }

  func testFindKthBit5() {
    let input = (20, 300_000)
    let output: Character = "0"
    XCTAssertEqual(FindKthBitInNthBinaryString().findKthBit(input.0, input.1), output)
  }
}
