@testable
import Leetcode
import Testing

@Suite
struct IntegerToEnglishWordsTests {
  @Test func testNumberToWords1() {
    let input = 123
    let output = "One Hundred Twenty Three"
    #expect(IntegerToEnglishWords().numberToWords(input) == output)
  }

  @Test func testNumberToWords2() {
    let input = 12345
    let output = "Twelve Thousand Three Hundred Forty Five"
    #expect(IntegerToEnglishWords().numberToWords(input) == output)
  }

  @Test func testNumberToWords3() {
    let input = 1_234_567
    let output = "One Million Two Hundred Thirty Four Thousand Five Hundred Sixty Seven"
    #expect(IntegerToEnglishWords().numberToWords(input) == output)
  }

  @Test func testNumberToWords4() {
    let input = 11
    let output = "Eleven"
    #expect(IntegerToEnglishWords().numberToWords(input) == output)
  }

  @Test func testNumberToWords5() {
    let input = 40
    let output = "Forty"
    #expect(IntegerToEnglishWords().numberToWords(input) == output)
  }

  @Test func testNumberToWords6() {
    let input = 0
    let output = "Zero"
    #expect(IntegerToEnglishWords().numberToWords(input) == output)
  }

  @Test func testNumberToWords7() {
    let input = 1_000_000_000
    let output = "One Billion"
    #expect(IntegerToEnglishWords().numberToWords(input) == output)
  }

  @Test func testNumberToWords8() {
    let input = 1_409_990_499
    let output = "One Billion Four Hundred Nine Million Nine Hundred Ninety Thousand Four Hundred Ninety Nine"
    #expect(IntegerToEnglishWords().numberToWords(input) == output)
  }
}
