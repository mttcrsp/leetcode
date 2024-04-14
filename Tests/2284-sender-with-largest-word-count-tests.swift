@testable
import Leetcode
import XCTest

final class SenderWithLargestWordCountTests: XCTestCase {
  func testLargestWordCount1() {
    let input = (
      ["Hello userTwooo", "Hi userThree", "Wonderful day Alice", "Nice day userThree"],
      ["Alice", "userTwo", "userThree", "Alice"]
    )
    let output = "Alice"
    XCTAssertEqual(SenderWithLargestWordCount().largestWordCount(input.0, input.1), output)
  }

  func testLargestWordCount2() {
    let input = (
      ["How is leetcode for everyone", "Leetcode is useful for practice"],
      ["Bob", "Charlie"]
    )
    let output = "Charlie"
    XCTAssertEqual(SenderWithLargestWordCount().largestWordCount(input.0, input.1), output)
  }
}
