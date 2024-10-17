@testable
import Leetcode
import Testing

@Suite
struct BackspaceStringCompareTests {
  @Test func testBackspacecompare1() {
    let input = ("ab#c", "ad#c")
    let output = true
    #expect(BackspaceStringCompare().backspaceCompare(input.0, input.1) == output)
  }

  @Test func testBackspacecompare2() {
    let input = ("ab##", "c#d#")
    let output = true
    #expect(BackspaceStringCompare().backspaceCompare(input.0, input.1) == output)
  }

  @Test func testBackspacecompare3() {
    let input = ("a#c", "b")
    let output = false
    #expect(BackspaceStringCompare().backspaceCompare(input.0, input.1) == output)
  }
}
