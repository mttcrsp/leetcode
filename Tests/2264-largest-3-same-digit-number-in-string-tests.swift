@testable
import Leetcode
import XCTest

final class Largest3SameDigitNumberInStringTests: XCTestCase {
  func testTestLargestgoodinteger1() {
    let input = "6777133339"
    let output = "777"
    XCTAssertEqual(Largest3SameDigitNumberInString().largestGoodInteger(input), output)
  }

  func testTestLargestgoodinteger2() {
    let input = "2300019"
    let output = "000"
    XCTAssertEqual(Largest3SameDigitNumberInString().largestGoodInteger(input), output)
  }

  func testTestLargestgoodinteger3() {
    let input = "42352338"
    let output = ""
    XCTAssertEqual(Largest3SameDigitNumberInString().largestGoodInteger(input), output)
  }

  func testTestLargestgoodinteger4() {
    let input = "199995550"
    let output = "999"
    XCTAssertEqual(Largest3SameDigitNumberInString().largestGoodInteger(input), output)
  }

  func testTestLargestgoodinteger5() {
    let input = "3200014888"
    let output = "888"
    XCTAssertEqual(Largest3SameDigitNumberInString().largestGoodInteger(input), output)
  }

  func testTestLargestgoodinteger6() {
    let input = "973231110400000008111583403162976633308416208644442"
    let output = "444"
    XCTAssertEqual(Largest3SameDigitNumberInString().largestGoodInteger(input), output)
  }

  func testTestLargestgoodinteger7() {
    let input = "02844458683593127114444440593333336810269"
    let output = "444"
    XCTAssertEqual(Largest3SameDigitNumberInString().largestGoodInteger(input), output)
  }
}
