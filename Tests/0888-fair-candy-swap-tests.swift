@testable
import Leetcode
import XCTest

final class FairCandySwapTests: XCTestCase {
  func testFairCandySwap1() {
    let input = ([1, 1], [2, 2])
    let output = [1, 2]
    XCTAssertEqual(FairCandySwap().fairCandySwap(input.0, input.1), output)
  }

  func testFairCandySwap2() {
    let input = ([1, 2], [2, 3])
    let output = FairCandySwap().fairCandySwap(input.0, input.1)
    XCTAssert(output == [1, 2] || output == [2, 3])
  }

  func testFairCandySwap3() {
    let input = ([2], [1, 3])
    let output = [2, 3]
    XCTAssertEqual(FairCandySwap().fairCandySwap(input.0, input.1), output)
  }

  func testFairCandySwap4() {
    let input = ([1, 2, 5], [2, 4])
    let output = [5, 4]
    XCTAssertEqual(FairCandySwap().fairCandySwap(input.0, input.1), output)
  }
}
