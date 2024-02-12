@testable
import Leetcode
import XCTest

final class FaultyKeyboardTests: XCTestCase {
  func testFinalstring1() {
    let input = "string"
    let output = "rtsng"
    XCTAssertEqual(FaultyKeyboard().finalString(input), output)
  }

  func testFinalstring2() {
    let input = "poiinter"
    let output = "ponter"
    XCTAssertEqual(FaultyKeyboard().finalString(input), output)
  }

  func testFinalstring3() {
    let input = "something"
    let output = "htemosng"
    XCTAssertEqual(FaultyKeyboard().finalString(input), output)
  }

  func testFinalstring4() {
    let input = "finalfailed"
    let output = "aflanfled"
    XCTAssertEqual(FaultyKeyboard().finalString(input), output)
  }

  func testFinalstring5() {
    let input = "asiiiasiiidf"
    let output = "saasdf"
    XCTAssertEqual(FaultyKeyboard().finalString(input), output)
  }

  func testFinalstring6() {
    let input = "asikjdfhaskiiildfihaiii"
    let output = "ahksahfdjkasldf"
    XCTAssertEqual(FaultyKeyboard().finalString(input), output)
  }

  func testFinalstring7() {
    let input = "abicdief"
    let output = "dcabef"
    XCTAssertEqual(FaultyKeyboard().finalString(input), output)
  }
}
