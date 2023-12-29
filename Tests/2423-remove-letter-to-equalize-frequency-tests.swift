@testable
import Leetcode
import XCTest

final class RemoveLetterToEqualizeFrequencyTests: XCTestCase {
  func testTestEqualfrequency1() {
    let input = "abcc"
    let output = true
    XCTAssertEqual(RemoveLetterToEqualizeFrequency().equalFrequency(input), output)
  }

  func testTestEqualfrequency2() {
    let input = "aazz"
    let output = false
    XCTAssertEqual(RemoveLetterToEqualizeFrequency().equalFrequency(input), output)
  }

  func testTestEqualfrequency3() {
    let input = "ddaccb"
    let output = false
    XCTAssertEqual(RemoveLetterToEqualizeFrequency().equalFrequency(input), output)
  }

  func testTestEqualfrequency4() {
    let input = "cccaa"
    let output = true
    XCTAssertEqual(RemoveLetterToEqualizeFrequency().equalFrequency(input), output)
  }

  func testTestEqualfrequency5() {
    let input = "aa"
    let output = true
    XCTAssertEqual(RemoveLetterToEqualizeFrequency().equalFrequency(input), output)
  }

  func testTestEqualfrequency6() {
    let input = "bac"
    let output = true
    XCTAssertEqual(RemoveLetterToEqualizeFrequency().equalFrequency(input), output)
  }

  func testTestEqualfrequency7() {
    let input = "bac"
    let output = true
    XCTAssertEqual(RemoveLetterToEqualizeFrequency().equalFrequency(input), output)
  }

  func testTestEqualfrequency8() {
    let input = "aachqpawxanqdkcdycjkewbmiavafhrzzfxrolfbqvywqoiqzdgopjngpgnwiguitudbawbyxputjafdkfgrojdokj"
    let output = false
    XCTAssertEqual(RemoveLetterToEqualizeFrequency().equalFrequency(input), output)
  }

  func testTestEqualfrequency9() {
    let input = "zz"
    let output = true
    XCTAssertEqual(RemoveLetterToEqualizeFrequency().equalFrequency(input), output)
  }

  func testTestEqualfrequency10() {
    let input = "aazz"
    let output = false
    XCTAssertEqual(RemoveLetterToEqualizeFrequency().equalFrequency(input), output)
  }

  func testTestEqualfrequency11() {
    let input = "cccd"
    let output = true
    XCTAssertEqual(RemoveLetterToEqualizeFrequency().equalFrequency(input), output)
  }
}
