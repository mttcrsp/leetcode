@testable
import Leetcode
import Testing

@Suite
struct LemonadeChangeTests {
  @Test func testLemonadeChange1() {
    let input = [5, 5, 5, 10, 20]
    let output = true
    #expect(LemonadeChange().lemonadeChange(input) == output)
  }

  @Test func testLemonadeChange2() {
    let input = [5, 5, 10]
    let output = true
    #expect(LemonadeChange().lemonadeChange(input) == output)
  }

  @Test func testLemonadeChange3() {
    let input = [10, 10]
    let output = false
    #expect(LemonadeChange().lemonadeChange(input) == output)
  }

  @Test func testLemonadeChange4() {
    let input = [5, 5, 10, 10, 20]
    let output = false
    #expect(LemonadeChange().lemonadeChange(input) == output)
  }

  @Test func testLemonadeChange5() {
    let input = [5, 5, 10, 20, 5, 5, 5, 5, 5, 5, 5, 5, 5, 10, 5, 5, 20, 5, 20, 5]
    let output = true
    #expect(LemonadeChange().lemonadeChange(input) == output)
  }
}
