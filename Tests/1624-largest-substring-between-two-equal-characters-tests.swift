@testable
import Leetcode
import XCTest

final class LargestSubstringBetweenTwoEqualCharactersTests: XCTestCase {
  func testMaxlengthbetweenequalcharacters1() {
    let input = "aa"
    let output = 0
    XCTAssertEqual(LargestSubstringBetweenTwoEqualCharacters().maxLengthBetweenEqualCharacters(input), output)
  }

  func testMaxlengthbetweenequalcharacters2() {
    let input = "abca"
    let output = 2
    XCTAssertEqual(LargestSubstringBetweenTwoEqualCharacters().maxLengthBetweenEqualCharacters(input), output)
  }

  func testMaxlengthbetweenequalcharacters3() {
    let input = "cbzxy"
    let output = -1
    XCTAssertEqual(LargestSubstringBetweenTwoEqualCharacters().maxLengthBetweenEqualCharacters(input), output)
  }

  func testMaxlengthbetweenequalcharacters4() {
    let input = "cccccccccccc"
    let output = 10
    XCTAssertEqual(LargestSubstringBetweenTwoEqualCharacters().maxLengthBetweenEqualCharacters(input), output)
  }
}
