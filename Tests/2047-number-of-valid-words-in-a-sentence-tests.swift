@testable
import Leetcode
import XCTest

final class NumberOfValidWordsInASentenceTests: XCTestCase {
  func testCountvalidwords1() {
    let input = "cat and  dog"
    let output = 3
    XCTAssertEqual(NumberOfValidWordsInASentence().countValidWords(input), output)
  }

  func testCountvalidwords2() {
    let input = "!this  1-s b8d!"
    let output = 0
    XCTAssertEqual(NumberOfValidWordsInASentence().countValidWords(input), output)
  }

  func testCountvalidwords3() {
    let input = "alice and  bob are playing stone-game10"
    let output = 5
    XCTAssertEqual(NumberOfValidWordsInASentence().countValidWords(input), output)
  }

  func testCountvalidwords4() {
    let input = "alic,e"
    let output = 0
    XCTAssertEqual(NumberOfValidWordsInASentence().countValidWords(input), output)
  }

  func testCountvalidwords5() {
    let input = "alic,, a"
    let output = 1
    XCTAssertEqual(NumberOfValidWordsInASentence().countValidWords(input), output)
  }

  func testCountvalidwords6() {
    let input = "al-i-c"
    let output = 0
    XCTAssertEqual(NumberOfValidWordsInASentence().countValidWords(input), output)
  }

  func testCountvalidwords7() {
    let input = "-"
    let output = 0
    XCTAssertEqual(NumberOfValidWordsInASentence().countValidWords(input), output)
  }

  func testCountvalidwords8() {
    let input = "a-"
    let output = 0
    XCTAssertEqual(NumberOfValidWordsInASentence().countValidWords(input), output)
  }

  func testCountvalidwords9() {
    let input = "-a"
    let output = 0
    XCTAssertEqual(NumberOfValidWordsInASentence().countValidWords(input), output)
  }

  func testCountvalidwords10() {
    let input = "!g 3 !sy "
    let output = 0
    XCTAssertEqual(NumberOfValidWordsInASentence().countValidWords(input), output)
  }
}
