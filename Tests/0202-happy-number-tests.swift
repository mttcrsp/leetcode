@testable
import Leetcode
import Testing

@Suite
struct HappyNumberTests {
  @Test func testIsHappy1() {
    let input = 19
    let output = true
    #expect(HappyNumber().isHappy(input) == output)
  }

  @Test func testIsHappy2() {
    let input = 25
    let output = false
    #expect(HappyNumber().isHappy(input) == output)
  }

  @Test func testIsHappy3() {
    let input = 0
    let output = false
    #expect(HappyNumber().isHappy(input) == output)
  }

  @Test func testIsHappy4() {
    let input = 9
    let output = false
    #expect(HappyNumber().isHappy(input) == output)
  }

  @Test func testIsHappy5() {
    let input = 7
    let output = true
    #expect(HappyNumber().isHappy(input) == output)
  }
}
