@testable
import Leetcode
import XCTest

final class FaultyKeyboardTests: XCTestCase {
  func testTestFinalstring1() {
    let input = "string"
    let output = "rtsng"
    XCTAssertEqual(FaultyKeyboard().finalString(input), output)
  }

  func testTestFinalstring2() {
    let input = "poiinter"
    let output = "ponter"
    XCTAssertEqual(FaultyKeyboard().finalString(input), output)
  }

  func testTestFinalstring3() {
    let input = "something"
    let output = "htemosng"
    XCTAssertEqual(FaultyKeyboard().finalString(input), output)
  }

  func testTestFinalstring4() {
    let input = "finalfailed"
    let output = "aflanfled"
    XCTAssertEqual(FaultyKeyboard().finalString(input), output)
  }

  func testTestFinalstring5() {
    let input = "asiiiasiiidf"
    let output = "saasdf"
    XCTAssertEqual(FaultyKeyboard().finalString(input), output)
  }

  func testTestFinalstring6() {
    let input = "asikjdfhaskiiildfihaiii"
    let output = "ahksahfdjkasldf"
    XCTAssertEqual(FaultyKeyboard().finalString(input), output)
  }

  func testTestFinalstring7() {
    let input = "abicdief"
    let output = "dcabef"
    XCTAssertEqual(FaultyKeyboard().finalString(input), output)
  }
}
