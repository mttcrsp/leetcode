@testable
import Leetcode
import XCTest

final class LetterCombinationsOfAPhoneNumberTests: XCTestCase {
  func testLettercombinations1() {
    let input = "23"
    let output = ["ad", "bd", "cd", "ae", "be", "ce", "af", "bf", "cf"]
    XCTAssertEqual(LetterCombinationsOfAPhoneNumber().letterCombinations(input), output)
  }

  func testLettercombinations2() {
    let input = ""
    let output = [] as [String]
    XCTAssertEqual(LetterCombinationsOfAPhoneNumber().letterCombinations(input), output)
  }

  func testLettercombinations3() {
    let input = "2"
    let output = ["a", "b", "c"]
    XCTAssertEqual(LetterCombinationsOfAPhoneNumber().letterCombinations(input), output)
  }
}
