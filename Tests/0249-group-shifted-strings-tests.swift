@testable
import Leetcode
import XCTest

final class GroupShiftedStringsTests: XCTestCase {
  func testGroupStrings1() {
    let input = ["abc", "bcd", "acef", "xyz", "az", "ba", "a", "z"]
    let output = [["acef"], ["a", "z"], ["abc", "bcd", "xyz"], ["az", "ba"]]
    XCTAssertEqual(Set(GroupShiftedStrings().groupStrings(input)), Set(output))
  }

  func testGroupStrings2() {
    let input = ["a"]
    let output = [["a"]]
    XCTAssertEqual(Set(GroupShiftedStrings().groupStrings(input)), Set(output))
  }
}
