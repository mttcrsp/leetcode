@testable
import Leetcode
import Testing

@Suite
struct IntegerReplacementTests {
  @Test func testIntegerreplacement1() {
    let input = 8
    let output = 3
    #expect(IntegerReplacement().integerReplacement(input) == output)
  }

  @Test func testIntegerreplacement2() {
    let input = 7
    let output = 4
    #expect(IntegerReplacement().integerReplacement(input) == output)
  }

  @Test func testIntegerreplacement3() {
    let input = 4
    let output = 2
    #expect(IntegerReplacement().integerReplacement(input) == output)
  }

  @Test func testIntegerreplacement4() {
    let input = 3
    let output = 2
    #expect(IntegerReplacement().integerReplacement(input) == output)
  }

  @Test func testIntegerreplacement5() {
    let input = 17
    let output = 5
    #expect(IntegerReplacement().integerReplacement(input) == output)
  }

  @Test func testIntegerreplacement6() {
    let input = 19
    let output = 6
    #expect(IntegerReplacement().integerReplacement(input) == output)
  }

  @Test func testIntegerreplacement7() {
    let input = 1_243_768
    let output = 26
    #expect(IntegerReplacement().integerReplacement(input) == output)
  }
}
