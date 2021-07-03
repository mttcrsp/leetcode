@testable
import Leetcode
import XCTest

final class ConsecutiveCharactersTests: XCTestCase {
  func testMaxPower1() {
    let input = "l"
    let output = 1
    XCTAssertEqual(ConsecutiveCharacters().maxPower(input), output)
  }

  func testMaxPower2() {
    let input = "llllll"
    let output = 6
    XCTAssertEqual(ConsecutiveCharacters().maxPower(input), output)
  }

  func testMaxPower3() {
    let input = "aaallll"
    let output = 4
    XCTAssertEqual(ConsecutiveCharacters().maxPower(input), output)
  }

  func testMaxPower4() {
    let input = "leetcode"
    let output = 2
    XCTAssertEqual(ConsecutiveCharacters().maxPower(input), output)
  }

  func testMaxPower5() {
    let input = "abbcccddddeeeeedcba"
    let output = 5
    XCTAssertEqual(ConsecutiveCharacters().maxPower(input), output)
  }

  func testMaxPower6() {
    let input = "triplepillooooow"
    let output = 5
    XCTAssertEqual(ConsecutiveCharacters().maxPower(input), output)
  }

  func testMaxPower7() {
    let input = "hooraaaaaaaaaaay"
    let output = 11
    XCTAssertEqual(ConsecutiveCharacters().maxPower(input), output)
  }

  func testMaxPower8() {
    let input = "tourist"
    let output = 1
    XCTAssertEqual(ConsecutiveCharacters().maxPower(input), output)
  }
}
