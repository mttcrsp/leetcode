@testable
import Leetcode
import Testing

@Suite
struct DecodeXoredArrayTests {
  @Test func testDecode1() {
    let input = ([1, 2, 3], 1)
    let output = [1, 0, 2, 1]
    #expect(DecodeXoredArray().decode(input.0, input.1) == output)
  }

  @Test func testDecode2() {
    let input = ([6, 2, 7, 3], 4)
    let output = [4, 2, 0, 7, 4]
    #expect(DecodeXoredArray().decode(input.0, input.1) == output)
  }
}
