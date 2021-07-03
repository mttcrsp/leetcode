@testable
import Leetcode
import XCTest

final class IntegerToEnglishWordsTests: XCTestCase {
  func testNumberToWords1() {
    let input = 123
    let output = "One Hundred Twenty Three"
    XCTAssertEqual(IntegerToEnglishWords().numberToWords(input), output)
  }

  func testNumberToWords2() {
    let input = 12345
    let output = "Twelve Thousand Three Hundred Forty Five"
    XCTAssertEqual(IntegerToEnglishWords().numberToWords(input), output)
  }

  func testNumberToWords3() {
    let input = 1_234_567
    let output = "One Million Two Hundred Thirty Four Thousand Five Hundred Sixty Seven"
    XCTAssertEqual(IntegerToEnglishWords().numberToWords(input), output)
  }

  func testNumberToWords4() {
    let input = 11
    let output = "Eleven"
    XCTAssertEqual(IntegerToEnglishWords().numberToWords(input), output)
  }

  func testNumberToWords5() {
    let input = 40
    let output = "Forty"
    XCTAssertEqual(IntegerToEnglishWords().numberToWords(input), output)
  }

  func testNumberToWords6() {
    let input = 0
    let output = "Zero"
    XCTAssertEqual(IntegerToEnglishWords().numberToWords(input), output)
  }

  func testNumberToWords7() {
    let input = 1_000_000_000
    let output = "One Billion"
    XCTAssertEqual(IntegerToEnglishWords().numberToWords(input), output)
  }

  func testNumberToWords8() {
    let input = 1_409_990_499
    let output = "One Billion Four Hundred Nine Million Nine Hundred Ninety Thousand Four Hundred Ninety Nine"
    XCTAssertEqual(IntegerToEnglishWords().numberToWords(input), output)
  }
}
