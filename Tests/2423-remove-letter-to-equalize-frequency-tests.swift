@testable
import Leetcode
import XCTest

final class RemoveLetterToEqualizeFrequencyTests: XCTestCase {
  func testEqualFrequency1() {
    let input = "abcc"
    let output = true
    XCTAssertEqual(RemoveLetterToEqualizeFrequency().equalFrequency(input), output)
  }

  func testEqualFrequency2() {
    let input = "aazz"
    let output = false
    XCTAssertEqual(RemoveLetterToEqualizeFrequency().equalFrequency(input), output)
  }

  func testEqualFrequency3() {
    let input = "ddaccb"
    let output = false
    XCTAssertEqual(RemoveLetterToEqualizeFrequency().equalFrequency(input), output)
  }

  func testEqualFrequency4() {
    let input = "cccaa"
    let output = true
    XCTAssertEqual(RemoveLetterToEqualizeFrequency().equalFrequency(input), output)
  }

  func testEqualFrequency5() {
    let input = "aa"
    let output = true
    XCTAssertEqual(RemoveLetterToEqualizeFrequency().equalFrequency(input), output)
  }

  func testEqualFrequency6() {
    let input = "bac"
    let output = true
    XCTAssertEqual(RemoveLetterToEqualizeFrequency().equalFrequency(input), output)
  }

  func testEqualFrequency7() {
    let input = "bac"
    let output = true
    XCTAssertEqual(RemoveLetterToEqualizeFrequency().equalFrequency(input), output)
  }

  func testEqualFrequency8() {
    let input = "aachqpawxanqdkcdycjkewbmiavafhrzzfxrolfbqvywqoiqzdgopjngpgnwiguitudbawbyxputjafdkfgrojdokj"
    let output = false
    XCTAssertEqual(RemoveLetterToEqualizeFrequency().equalFrequency(input), output)
  }

  func testEqualFrequency9() {
    let input = "zz"
    let output = true
    XCTAssertEqual(RemoveLetterToEqualizeFrequency().equalFrequency(input), output)
  }

  func testEqualFrequency10() {
    let input = "aazz"
    let output = false
    XCTAssertEqual(RemoveLetterToEqualizeFrequency().equalFrequency(input), output)
  }

  func testEqualFrequency11() {
    let input = "cccd"
    let output = true
    XCTAssertEqual(RemoveLetterToEqualizeFrequency().equalFrequency(input), output)
  }
}
