@testable
import Leetcode
import Testing

@Suite
struct ReconstructOriginalDigitsFromEnglishTests {
  @Test func testOriginaldigits1() {
    let input = "owoztneoer"
    let output = "012"
    #expect(ReconstructOriginalDigitsFromEnglish().originalDigits(input) == output)
  }

  @Test func testOriginaldigits2() {
    let input = "fviefuro"
    let output = "45"
    #expect(ReconstructOriginalDigitsFromEnglish().originalDigits(input) == output)
  }

  @Test func testOriginaldigits3() {
    let input = "oneonezerozerooneone"
    let output = "001111"
    #expect(ReconstructOriginalDigitsFromEnglish().originalDigits(input) == output)
  }

  @Test func testOriginaldigits4() {
    let input = "nnei"
    let output = "9"
    #expect(ReconstructOriginalDigitsFromEnglish().originalDigits(input) == output)
  }
}
