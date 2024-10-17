@testable
import Leetcode
import Testing

@Suite
struct FindOriginalArrayFromDoubledArrayTests {
  @Test func testFindOriginalArray1() {
    let input = [1, 3, 4, 2, 6, 8]
    let output = [1, 3, 4]
    #expect(FindOriginalArrayFromDoubledArray().findOriginalArray(input) == output)
  }

  @Test func testFindOriginalArray2() {
    let input = [6, 3, 0, 1]
    let output = [] as [Int]
    #expect(FindOriginalArrayFromDoubledArray().findOriginalArray(input) == output)
  }

  @Test func testFindOriginalArray3() {
    let input = [1]
    let output = [] as [Int]
    #expect(FindOriginalArrayFromDoubledArray().findOriginalArray(input) == output)
  }

  @Test func testFindOriginalArray4() {
    let input = [0, 0, 0, 0]
    let output = [0, 0]
    #expect(FindOriginalArrayFromDoubledArray().findOriginalArray(input) == output)
  }
}
