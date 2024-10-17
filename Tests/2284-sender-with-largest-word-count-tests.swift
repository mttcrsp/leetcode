@testable
import Leetcode
import Testing

@Suite
struct SenderWithLargestWordCountTests {
  @Test func testLargestWordCount1() {
    let input = (
      ["Hello userTwooo", "Hi userThree", "Wonderful day Alice", "Nice day userThree"],
      ["Alice", "userTwo", "userThree", "Alice"]
    )
    let output = "Alice"
    #expect(SenderWithLargestWordCount().largestWordCount(input.0, input.1) == output)
  }

  @Test func testLargestWordCount2() {
    let input = (
      ["How is leetcode for everyone", "Leetcode is useful for practice"],
      ["Bob", "Charlie"]
    )
    let output = "Charlie"
    #expect(SenderWithLargestWordCount().largestWordCount(input.0, input.1) == output)
  }
}
