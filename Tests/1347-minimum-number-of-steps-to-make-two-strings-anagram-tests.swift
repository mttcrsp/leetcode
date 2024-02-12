@testable
import Leetcode
import XCTest

final class MinimumNumberOfStepsToMakeTwoStringsAnagramTests: XCTestCase {
  func testMinsteps1() {
    let input = ("bab", "aba")
    let output = 1
    XCTAssertEqual(MinimumNumberOfStepsToMakeTwoStringsAnagram().minSteps(input.0, input.1), output)
  }

  func testMinsteps2() {
    let input = ("leetcode", "practice")
    let output = 5
    XCTAssertEqual(MinimumNumberOfStepsToMakeTwoStringsAnagram().minSteps(input.0, input.1), output)
  }

  func testMinsteps3() {
    let input = ("anagram", "mangaar")
    let output = 0
    XCTAssertEqual(MinimumNumberOfStepsToMakeTwoStringsAnagram().minSteps(input.0, input.1), output)
  }
}
