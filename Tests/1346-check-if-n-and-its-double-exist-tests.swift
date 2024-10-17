@testable
import Leetcode
import Testing

@Suite
struct CheckIfNAndItsDoubleExistTests {
  @Test func testCheckIfExists1() {
    let input = [10, 2, 5, 3]
    let output = true
    #expect(CheckIfNAndItsDoubleExist().checkIfExist(input) == output)
  }

  @Test func testCheckIfExists2() {
    let input = [7, 1, 14, 11]
    let output = true
    #expect(CheckIfNAndItsDoubleExist().checkIfExist(input) == output)
  }

  @Test func testCheckIfExists3() {
    let input = [3, 1, 7, 11]
    let output = false
    #expect(CheckIfNAndItsDoubleExist().checkIfExist(input) == output)
  }

  @Test func testCheckIfExists4() {
    let input = [-2, 0, 10, -19, 4, 6, -8]
    let output = false
    #expect(CheckIfNAndItsDoubleExist().checkIfExist(input) == output)
  }

  @Test func testCheckIfExists5() {
    let input = [0, 0]
    let output = true
    #expect(CheckIfNAndItsDoubleExist().checkIfExist(input) == output)
  }
}
