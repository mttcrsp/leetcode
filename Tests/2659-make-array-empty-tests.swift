@testable
import Leetcode
import Testing

@Suite
struct MakeArrayEmptyTests {
  @Test func testCountoperationstoemptyarray1() {
    let input = [3, 4, -1]
    let output = 5
    #expect(MakeArrayEmpty().countOperationsToEmptyArray(input) == output)
  }

  @Test func testCountoperationstoemptyarray2() {
    let input = [1, 2, 4, 3]
    let output = 5
    #expect(MakeArrayEmpty().countOperationsToEmptyArray(input) == output)
  }

  @Test func testCountoperationstoemptyarray3() {
    let input = [1, 2, 3]
    let output = 3
    #expect(MakeArrayEmpty().countOperationsToEmptyArray(input) == output)
  }

  @Test func testCountoperationstoemptyarray4() {
    let input = [2, 4, 5, 6, 1, 8, 7]
    let output = 14
    #expect(MakeArrayEmpty().countOperationsToEmptyArray(input) == output)
  }
}
