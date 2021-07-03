@testable
import Leetcode
import XCTest

final class SubtractTheProductAndSumOfDigitsOfAnIntegerTests: XCTestCase {
  func testSubtractProductAndSum1() {
    let input = 234
    let output = 15
    XCTAssertEqual(SubtractTheProductAndSumOfDigitsOfAnInteger().subtractProductAndSum(input), output)
  }

  func testSubtractProductAndSum2() {
    let input = 4421
    let output = 21
    XCTAssertEqual(SubtractTheProductAndSumOfDigitsOfAnInteger().subtractProductAndSum(input), output)
  }
}
