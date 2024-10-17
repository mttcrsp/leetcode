@testable
import Leetcode
import Testing

@Suite
struct PlusOneTests {
  @Test func testPlusOne1() {
    let input = [1, 2, 3]
    let output = [1, 2, 4]
    #expect(PlusOne().plusOne(input) == output)
  }

  @Test func testPlusOne2() {
    let input = [4, 3, 2, 1]
    let output = [4, 3, 2, 2]
    #expect(PlusOne().plusOne(input) == output)
  }

  @Test func testPlusOne3() {
    let input = [0]
    let output = [1]
    #expect(PlusOne().plusOne(input) == output)
  }

  @Test func testPlusOne4() {
    let input = [9]
    let output = [1, 0]
    #expect(PlusOne().plusOne(input) == output)
  }

  @Test func testPlusOne5() {
    let input = [1, 9]
    let output = [2, 0]
    #expect(PlusOne().plusOne(input) == output)
  }

  @Test func testPlusOne6() {
    let input = [9, 9]
    let output = [1, 0, 0]
    #expect(PlusOne().plusOne(input) == output)
  }

  @Test func testPlusOne7() {
    let input = [9, 0]
    let output = [9, 1]
    #expect(PlusOne().plusOne(input) == output)
  }
}
