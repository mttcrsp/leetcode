@testable
import Leetcode
import XCTest

final class ReconstructOriginalDigitsFromEnglishTests: XCTestCase {
  func testOriginaldigits1() {
    let input = "owoztneoer"
    let output = "012"
    XCTAssertEqual(ReconstructOriginalDigitsFromEnglish().originalDigits(input), output)
  }

  func testOriginaldigits2() {
    let input = "fviefuro"
    let output = "45"
    XCTAssertEqual(ReconstructOriginalDigitsFromEnglish().originalDigits(input), output)
  }

  func testOriginaldigits3() {
    let input = "oneonezerozerooneone"
    let output = "001111"
    XCTAssertEqual(ReconstructOriginalDigitsFromEnglish().originalDigits(input), output)
  }

  func testOriginaldigits4() {
    let input = "nnei"
    let output = "9"
    XCTAssertEqual(ReconstructOriginalDigitsFromEnglish().originalDigits(input), output)
  }
}
