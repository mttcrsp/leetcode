@testable
import Leetcode
import Testing

@Suite
struct DetectCapitalTests {
  @Test func testDetectCapitalUse1() {
    let input = "facebook"
    let output = true
    #expect(DetectCapital().detectCapitalUse(input) == output)
  }

  @Test func testDetectCapitalUse2() {
    let input = "Facebook"
    let output = true
    #expect(DetectCapital().detectCapitalUse(input) == output)
  }

  @Test func testDetectCapitalUse3() {
    let input = "FACEBOOK"
    let output = true
    #expect(DetectCapital().detectCapitalUse(input) == output)
  }

  @Test func testDetectCapitalUse4() {
    let input = "Fb"
    let output = true
    #expect(DetectCapital().detectCapitalUse(input) == output)
  }

  @Test func testDetectCapitalUse5() {
    let input = "Fb"
    let output = true
    #expect(DetectCapital().detectCapitalUse(input) == output)
  }

  @Test func testDetectCapitalUse6() {
    let input = "F"
    let output = true
    #expect(DetectCapital().detectCapitalUse(input) == output)
  }

  @Test func testDetectCapitalUse7() {
    let input = "Fb"
    let output = true
    #expect(DetectCapital().detectCapitalUse(input) == output)
  }

  @Test func testDetectCapitalUse8() {
    let input = "bF"
    let output = false
    #expect(DetectCapital().detectCapitalUse(input) == output)
  }

  @Test func testDetectCapitalUse9() {
    let input = "fACEBOOK"
    let output = false
    #expect(DetectCapital().detectCapitalUse(input) == output)
  }

  @Test func testDetectCapitalUse10() {
    let input = "facebooK"
    let output = false
    #expect(DetectCapital().detectCapitalUse(input) == output)
  }

  @Test func testDetectCapitalUse11() {
    let input = "fAcebook"
    let output = false
    #expect(DetectCapital().detectCapitalUse(input) == output)
  }

  @Test func testDetectCapitalUse12() {
    let input = "faceboOk"
    let output = false
    #expect(DetectCapital().detectCapitalUse(input) == output)
  }

  @Test func testDetectCapitalUse13() {
    let input = "fAcEbOoK"
    let output = false
    #expect(DetectCapital().detectCapitalUse(input) == output)
  }

  @Test func testDetectCapitalUse14() {
    let input = "FaCeBoOk"
    let output = false
    #expect(DetectCapital().detectCapitalUse(input) == output)
  }
}
