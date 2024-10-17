@testable
import Leetcode
import Testing

@Suite
struct NextPermutationTests {
  @Test func testNextPermutation1() {
    var input = [1, 2, 3]
    NextPermutation().nextPermutation(&input)
    #expect(input == [1, 3, 2])
  }

  @Test func testNextPermutation2() {
    var input = [3, 2, 1]
    NextPermutation().nextPermutation(&input)
    #expect(input == [1, 2, 3])
  }

  @Test func testNextPermutation3() {
    var input = [1, 1, 5]
    NextPermutation().nextPermutation(&input)
    #expect(input == [1, 5, 1])
  }

  @Test func testNextPermutation4() {
    var input = [1, 5, 1]
    NextPermutation().nextPermutation(&input)
    #expect(input == [5, 1, 1])
  }
}
