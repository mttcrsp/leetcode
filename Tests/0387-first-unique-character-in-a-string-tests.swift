@testable
import Leetcode
import XCTest

final class FirstUniqueCharacterInAStringTests: XCTestCase {
  func testFirstUniqChar1() {
    let input = "leetcode"
    let output = 0
    XCTAssertEqual(FirstUniqueCharacterInAString().firstUniqChar(input), output)
  }

  func testFirstUniqChar2() {
    let input = "loveleetcode"
    let output = 2
    XCTAssertEqual(FirstUniqueCharacterInAString().firstUniqChar(input), output)
  }

  func testFirstUniqChar3() {
    let input = "aabb"
    let output = -1
    XCTAssertEqual(FirstUniqueCharacterInAString().firstUniqChar(input), output)
  }
}
