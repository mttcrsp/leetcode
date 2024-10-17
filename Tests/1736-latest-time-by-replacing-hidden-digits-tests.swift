@testable
import Leetcode
import Testing

@Suite
struct LatestTimeByReplacingHiddenDigitsTests {
  @Test func testMaximumTime1() {
    let input = "2?:?0"
    let output = "23:50"
    #expect(LatestTimeByReplacingHiddenDigits().maximumTime(input) == output)
  }

  @Test func testMaximumTime2() {
    let input = "0?:3?"
    let output = "09:39"
    #expect(LatestTimeByReplacingHiddenDigits().maximumTime(input) == output)
  }

  @Test func testMaximumTime3() {
    let input = "1?:22"
    let output = "19:22"
    #expect(LatestTimeByReplacingHiddenDigits().maximumTime(input) == output)
  }

  @Test func testMaximumTime4() {
    let input = "??:??"
    let output = "23:59"
    #expect(LatestTimeByReplacingHiddenDigits().maximumTime(input) == output)
  }

  @Test func testMaximumTime5() {
    let input = "0?:??"
    let output = "09:59"
    #expect(LatestTimeByReplacingHiddenDigits().maximumTime(input) == output)
  }

  @Test func testMaximumTime6() {
    let input = "1?:??"
    let output = "19:59"
    #expect(LatestTimeByReplacingHiddenDigits().maximumTime(input) == output)
  }

  @Test func testMaximumTime7() {
    let input = "?3:?0"
    let output = "23:50"
    #expect(LatestTimeByReplacingHiddenDigits().maximumTime(input) == output)
  }
}
