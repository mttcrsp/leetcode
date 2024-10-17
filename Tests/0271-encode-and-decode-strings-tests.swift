@testable
import Leetcode
import Testing

@Suite
struct CodecTests {
  @Test func testCodec1() {
    let codec = Codec271()
    let input = ["Hello", "World"]
    #expect(codec.decode(codec.encode(input)) == input)
  }
}
