@testable
import Leetcode
import Testing

@Suite
struct DecryptStringFromAlphabetToIntegerMappingTests {
  @Test func testFreqAlphabets1() {
    let input = "10#11#12"
    let output = "jkab"
    #expect(DecryptStringFromAlphabetToIntegerMapping().freqAlphabets(input) == output)
  }

  @Test func testFreqAlphabets2() {
    let input = "1326#"
    let output = "acz"
    #expect(DecryptStringFromAlphabetToIntegerMapping().freqAlphabets(input) == output)
  }

  @Test func testFreqAlphabets3() {
    let input = "25#"
    let output = "y"
    #expect(DecryptStringFromAlphabetToIntegerMapping().freqAlphabets(input) == output)
  }

  @Test func testFreqAlphabets4() {
    let input = "12345678910#11#12#13#14#15#16#17#18#19#20#21#22#23#24#25#26#"
    let output = "abcdefghijklmnopqrstuvwxyz"
    #expect(DecryptStringFromAlphabetToIntegerMapping().freqAlphabets(input) == output)
  }

  @Test func testFreqAlphabets5() {
    let input = ""
    let output = ""
    #expect(DecryptStringFromAlphabetToIntegerMapping().freqAlphabets(input) == output)
  }
}
