@testable
import Leetcode
import Testing

@Suite
struct CheckIfBinaryStringHasAtMostOneSegmentOfOnesTests {
  @Test func testCheckOnesSegment1() {
    let input = "1001"
    let output = false
    #expect(CheckIfBinaryStringHasAtMostOneSegmentOfOnes().checkOnesSegment(input) == output)
  }

  @Test func testCheckOnesSegment2() {
    let input = "110"
    let output = true
    #expect(CheckIfBinaryStringHasAtMostOneSegmentOfOnes().checkOnesSegment(input) == output)
  }

  @Test func testCheckOnesSegment3() {
    let input = "11100"
    let output = true
    #expect(CheckIfBinaryStringHasAtMostOneSegmentOfOnes().checkOnesSegment(input) == output)
  }

  @Test func testCheckOnesSegment4() {
    let input = "10101"
    let output = false
    #expect(CheckIfBinaryStringHasAtMostOneSegmentOfOnes().checkOnesSegment(input) == output)
  }

  @Test func testCheckOnesSegment5() {
    let input = "1111"
    let output = true
    #expect(CheckIfBinaryStringHasAtMostOneSegmentOfOnes().checkOnesSegment(input) == output)
  }

  @Test func testCheckOnesSegment6() {
    let input = ""
    let output = true
    #expect(CheckIfBinaryStringHasAtMostOneSegmentOfOnes().checkOnesSegment(input) == output)
  }
}
