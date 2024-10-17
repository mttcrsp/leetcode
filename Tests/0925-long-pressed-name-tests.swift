@testable
import Leetcode
import Testing

@Suite
struct LongPressedNameTests {
  @Test func testIsLongPressedName1() {
    let input = ("alex", "aaleex")
    let output = true
    #expect(LongPressedName().isLongPressedName(input.0, input.1) == output)
  }

  @Test func testIsLongPressedName2() {
    let input = ("saeed", "ssaaedd")
    let output = false
    #expect(LongPressedName().isLongPressedName(input.0, input.1) == output)
  }

  @Test func testIsLongPressedName3() {
    let input = ("a", "aaaaaaaaaaa")
    let output = true
    #expect(LongPressedName().isLongPressedName(input.0, input.1) == output)
  }
}
