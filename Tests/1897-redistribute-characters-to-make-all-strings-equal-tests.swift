@testable
import Leetcode
import XCTest

final class RedistributeCharactersToMakeAllStringsEqualTests: XCTestCase {
  func testMakeequal1() {
    let input = ["abc", "aabc", "bc"]
    let output = true
    XCTAssertEqual(RedistributeCharactersToMakeAllStringsEqual().makeEqual(input), output)
  }

  func testMakeequal2() {
    let input = ["ab", "a"]
    let output = false
    XCTAssertEqual(RedistributeCharactersToMakeAllStringsEqual().makeEqual(input), output)
  }
}
