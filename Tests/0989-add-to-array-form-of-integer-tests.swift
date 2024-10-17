@testable
import Leetcode
import Testing

@Suite
struct AddToArrayFormOfIntegerTests {
  @Test func testAddToArrayForm1() {
    let input = ([1, 2, 0, 0], 34)
    let output = [1, 2, 3, 4]
    #expect(AddToArrayFormOfInteger().addToArrayForm(input.0, input.1) == output)
  }

  @Test func testAddToArrayForm2() {
    let input = ([2, 7, 4], 181)
    let output = [4, 5, 5]
    #expect(AddToArrayFormOfInteger().addToArrayForm(input.0, input.1) == output)
  }

  @Test func testAddToArrayForm3() {
    let input = ([2, 1, 5], 806)
    let output = [1, 0, 2, 1]
    #expect(AddToArrayFormOfInteger().addToArrayForm(input.0, input.1) == output)
  }

  @Test func testAddToArrayForm4() {
    let input = ([9, 9, 9, 9, 9, 9, 9, 9, 9, 9], 1)
    let output = [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
    #expect(AddToArrayFormOfInteger().addToArrayForm(input.0, input.1) == output)
  }

  @Test func testAddToArrayForm5() {
    let input = ([0, 0], 0)
    let output = [0]
    #expect(AddToArrayFormOfInteger().addToArrayForm(input.0, input.1) == output)
  }

  @Test func testAddToArrayForm6() {
    let input = ([1, 2, 6, 3, 0, 7, 1, 7, 1, 9, 7, 5, 6, 6, 4, 4, 0, 0, 6, 3], 516)
    let output = [1, 2, 6, 3, 0, 7, 1, 7, 1, 9, 7, 5, 6, 6, 4, 4, 0, 5, 7, 9]
    #expect(AddToArrayFormOfInteger().addToArrayForm(input.0, input.1) == output)
  }
}
