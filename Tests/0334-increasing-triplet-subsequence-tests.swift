@testable
import Leetcode
import XCTest

final class IncreasingTripletSubsequenceTests: XCTestCase {
  func testTestIncreasingtriplet1() {
    let input = [1, 2, 3, 4, 5]
    let output = true
    XCTAssertEqual(IncreasingTripletSubsequence().increasingTriplet(input), output)
  }

  func testTestIncreasingtriplet2() {
    let input = [5, 4, 3, 2, 1]
    let output = false
    XCTAssertEqual(IncreasingTripletSubsequence().increasingTriplet(input), output)
  }

  func testTestIncreasingtriplet3() {
    let input = [2, 1, 5, 0, 4, 6]
    let output = true
    XCTAssertEqual(IncreasingTripletSubsequence().increasingTriplet(input), output)
  }

  func testTestIncreasingtriplet4() {
    let input = [4, 1, 4, 5, 0, 6]
    let output = true
    XCTAssertEqual(IncreasingTripletSubsequence().increasingTriplet(input), output)
  }
}
