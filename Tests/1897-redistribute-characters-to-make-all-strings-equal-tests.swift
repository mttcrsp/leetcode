@testable
import Leetcode
import XCTest

final class RedistributeCharactersToMakeAllStringsEqualTests: XCTestCase {
  func testTestMakeequal1() {
    let input = ["abc", "aabc", "bc"]
    let output = true
    XCTAssertEqual(RedistributeCharactersToMakeAllStringsEqual().makeEqual(input), output)
  }

  func testTestMakeequal2() {
    let input = ["ab", "a"]
    let output = false
    XCTAssertEqual(RedistributeCharactersToMakeAllStringsEqual().makeEqual(input), output)
  }
}
