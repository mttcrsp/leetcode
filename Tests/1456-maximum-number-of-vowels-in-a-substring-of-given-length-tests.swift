@testable
import Leetcode
import XCTest

final class MaximumNumberOfVowelsInASubstringOfGivenLengthTests: XCTestCase {
  func testMaxvowels1() {
    let input = ("abciiidef", 3)
    let output = 3
    XCTAssertEqual(MaximumNumberOfVowelsInASubstringOfGivenLength().maxVowels(input.0, input.1), output)
  }

  func testMaxvowels3() {
    let input = ("aeiou", 2)
    let output = 2
    XCTAssertEqual(MaximumNumberOfVowelsInASubstringOfGivenLength().maxVowels(input.0, input.1), output)
  }

  func testMaxvowels5() {
    let input = ("leetcode", 3)
    let output = 2
    XCTAssertEqual(MaximumNumberOfVowelsInASubstringOfGivenLength().maxVowels(input.0, input.1), output)
  }
}
