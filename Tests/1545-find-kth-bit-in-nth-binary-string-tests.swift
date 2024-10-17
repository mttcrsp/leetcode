@testable
import Leetcode
import Testing

@Suite
struct FindKthBitInNthBinaryStringTests {
  @Test func testFindKthBit1() {
    let input = (3, 1)
    let output: Character = "0"
    #expect(FindKthBitInNthBinaryString().findKthBit(input.0, input.1) == output)
  }

  @Test func testFindKthBit2() {
    let input = (4, 11)
    let output: Character = "1"
    #expect(FindKthBitInNthBinaryString().findKthBit(input.0, input.1) == output)
  }

  @Test func testFindKthBit3() {
    let input = (1, 1)
    let output: Character = "0"
    #expect(FindKthBitInNthBinaryString().findKthBit(input.0, input.1) == output)
  }

  @Test func testFindKthBit4() {
    let input = (2, 3)
    let output: Character = "1"
    #expect(FindKthBitInNthBinaryString().findKthBit(input.0, input.1) == output)
  }

  @Test func testFindKthBit5() {
    let input = (20, 300_000)
    let output: Character = "0"
    #expect(FindKthBitInNthBinaryString().findKthBit(input.0, input.1) == output)
  }
}
