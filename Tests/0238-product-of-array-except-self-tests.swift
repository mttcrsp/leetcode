@testable
import Leetcode
import Testing

@Suite
struct ProductOfArrayExceptSelfTests {
  @Test func testProductExceptSelf1() {
    let input = [1, 2, 3, 4]
    let output = [24, 12, 8, 6]
    #expect(ProductOfArrayExceptSelf().productExceptSelf(input) == output)
  }

  @Test func testProductExceptSelf2() {
    let input = [-1, 1, 0, -3, 3]
    let output = [0, 0, 9, 0, 0]
    #expect(ProductOfArrayExceptSelf().productExceptSelf(input) == output)
  }

  @Test func testProductExceptSelf3() {
    let input = [0, 0]
    let output = [0, 0]
    #expect(ProductOfArrayExceptSelf().productExceptSelf(input) == output)
  }

  @Test func testProductExceptSelf4() {
    let input = [0, 1]
    let output = [1, 0]
    #expect(ProductOfArrayExceptSelf().productExceptSelf(input) == output)
  }

  @Test func testProductExceptSelf5() {
    let input = [-1, 1]
    let output = [1, -1]
    #expect(ProductOfArrayExceptSelf().productExceptSelf(input) == output)
  }

  @Test func testProductExceptSelf6() {
    let input = [-1, 1, 0, 0]
    let output = [0, 0, 0, 0]
    #expect(ProductOfArrayExceptSelf().productExceptSelf(input) == output)
  }
}
