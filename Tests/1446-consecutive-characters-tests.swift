@testable
import Leetcode
import Testing

@Suite
struct ConsecutiveCharactersTests {
  @Test func testMaxPower1() {
    let input = "l"
    let output = 1
    #expect(ConsecutiveCharacters().maxPower(input) == output)
  }

  @Test func testMaxPower2() {
    let input = "llllll"
    let output = 6
    #expect(ConsecutiveCharacters().maxPower(input) == output)
  }

  @Test func testMaxPower3() {
    let input = "aaallll"
    let output = 4
    #expect(ConsecutiveCharacters().maxPower(input) == output)
  }

  @Test func testMaxPower4() {
    let input = "leetcode"
    let output = 2
    #expect(ConsecutiveCharacters().maxPower(input) == output)
  }

  @Test func testMaxPower5() {
    let input = "abbcccddddeeeeedcba"
    let output = 5
    #expect(ConsecutiveCharacters().maxPower(input) == output)
  }

  @Test func testMaxPower6() {
    let input = "triplepillooooow"
    let output = 5
    #expect(ConsecutiveCharacters().maxPower(input) == output)
  }

  @Test func testMaxPower7() {
    let input = "hooraaaaaaaaaaay"
    let output = 11
    #expect(ConsecutiveCharacters().maxPower(input) == output)
  }

  @Test func testMaxPower8() {
    let input = "tourist"
    let output = 1
    #expect(ConsecutiveCharacters().maxPower(input) == output)
  }
}
