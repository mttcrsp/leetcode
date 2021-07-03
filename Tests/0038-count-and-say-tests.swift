@testable
import Leetcode
import XCTest

final class CountAndSayTests: XCTestCase {
  func testCountAndSay1() {
    let input = 1
    let output = "1"
    XCTAssertEqual(CountAndSay().countAndSay(input), output)
  }

  func testCountAndSay2() {
    let input = 4
    let output = "1211"
    XCTAssertEqual(CountAndSay().countAndSay(input), output)
  }

  func testCountAndSay3() {
    let input = 8
    let output = "1113213211"
    XCTAssertEqual(CountAndSay().countAndSay(input), output)
  }
}
