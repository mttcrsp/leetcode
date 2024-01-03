@testable
import Leetcode
import XCTest

final class NumberOfValidWordsInASentenceTests: XCTestCase {
  func testTestCountvalidwords1() {
    let input = "cat and  dog"
    let output = 3
    XCTAssertEqual(NumberOfValidWordsInASentence().countValidWords(input), output)
  }

  func testTestCountvalidwords2() {
    let input = "!this  1-s b8d!"
    let output = 0
    XCTAssertEqual(NumberOfValidWordsInASentence().countValidWords(input), output)
  }

  func testTestCountvalidwords3() {
    let input = "alice and  bob are playing stone-game10"
    let output = 5
    XCTAssertEqual(NumberOfValidWordsInASentence().countValidWords(input), output)
  }

  func testTestCountvalidwords4() {
    let input = "alic,e"
    let output = 0
    XCTAssertEqual(NumberOfValidWordsInASentence().countValidWords(input), output)
  }

  func testTestCountvalidwords5() {
    let input = "alic,, a"
    let output = 1
    XCTAssertEqual(NumberOfValidWordsInASentence().countValidWords(input), output)
  }

  func testTestCountvalidwords6() {
    let input = "al-i-c"
    let output = 0
    XCTAssertEqual(NumberOfValidWordsInASentence().countValidWords(input), output)
  }

  func testTestCountvalidwords7() {
    let input = "-"
    let output = 0
    XCTAssertEqual(NumberOfValidWordsInASentence().countValidWords(input), output)
  }

  func testTestCountvalidwords8() {
    let input = "a-"
    let output = 0
    XCTAssertEqual(NumberOfValidWordsInASentence().countValidWords(input), output)
  }

  func testTestCountvalidwords9() {
    let input = "-a"
    let output = 0
    XCTAssertEqual(NumberOfValidWordsInASentence().countValidWords(input), output)
  }

  func testTestCountvalidwords10() {
    let input = "!g 3 !sy "
    let output = 0
    XCTAssertEqual(NumberOfValidWordsInASentence().countValidWords(input), output)
  }
}
