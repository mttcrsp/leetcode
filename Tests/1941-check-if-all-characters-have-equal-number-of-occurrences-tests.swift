@testable
import Leetcode
import XCTest

final class CheckIfAllCharactersHaveEqualNumberOfOccurrencesTests: XCTestCase {
  func testAreOccurrencesEqual1() {
    let input = "abacbc"
    let output = true
    XCTAssertEqual(CheckIfAllCharactersHaveEqualNumberOfOccurrences().areOccurrencesEqual(input), output)
  }

  func testAreOccurrencesEqual2() {
    let input = "aaabb"
    let output = false
    XCTAssertEqual(CheckIfAllCharactersHaveEqualNumberOfOccurrences().areOccurrencesEqual(input), output)
  }
}
