@testable
import Leetcode
import Testing

@Suite
struct GroupShiftedStringsTests {
  @Test func testGroupStrings1() {
    let input = ["abc", "bcd", "acef", "xyz", "az", "ba", "a", "z"]
    let output = [["acef"], ["a", "z"], ["abc", "bcd", "xyz"], ["az", "ba"]]
    #expect(Set(GroupShiftedStrings().groupStrings(input)) == Set(output))
  }

  @Test func testGroupStrings2() {
    let input = ["a"]
    let output = [["a"]]
    #expect(Set(GroupShiftedStrings().groupStrings(input)) == Set(output))
  }
}
