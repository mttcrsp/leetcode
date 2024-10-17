@testable
import Leetcode
import Testing

@Suite
struct CountAndSayTests {
  @Test func testCountAndSay1() {
    let input = 1
    let output = "1"
    #expect(CountAndSay().countAndSay(input) == output)
  }

  @Test func testCountAndSay2() {
    let input = 4
    let output = "1211"
    #expect(CountAndSay().countAndSay(input) == output)
  }

  @Test func testCountAndSay3() {
    let input = 8
    let output = "1113213211"
    #expect(CountAndSay().countAndSay(input) == output)
  }
}
