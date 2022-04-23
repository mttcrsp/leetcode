@testable
import Leetcode
import XCTest

final class PowerOfThreeTests: XCTestCase {
  func testTestIspowerofthree1() {
    let input = 27
    let output = true
    XCTAssertEqual(PowerOfThree().isPowerOfThree(input), output)
  }

  func testTestIspowerofthree2() {
    let input = 0
    let output = false
    XCTAssertEqual(PowerOfThree().isPowerOfThree(input), output)
  }

  func testTestIspowerofthree3() {
    let input = 9
    let output = true
    XCTAssertEqual(PowerOfThree().isPowerOfThree(input), output)
  }

  func testTestIspowerofthree4() {
    let input = 1
    let output = true
    XCTAssertEqual(PowerOfThree().isPowerOfThree(input), output)
  }
}
