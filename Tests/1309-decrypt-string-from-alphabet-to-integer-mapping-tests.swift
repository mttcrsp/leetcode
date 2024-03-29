@testable
import Leetcode
import XCTest

final class DecryptStringFromAlphabetToIntegerMappingTests: XCTestCase {
  func testFreqAlphabets1() {
    let input = "10#11#12"
    let output = "jkab"
    XCTAssertEqual(DecryptStringFromAlphabetToIntegerMapping().freqAlphabets(input), output)
  }

  func testFreqAlphabets2() {
    let input = "1326#"
    let output = "acz"
    XCTAssertEqual(DecryptStringFromAlphabetToIntegerMapping().freqAlphabets(input), output)
  }

  func testFreqAlphabets3() {
    let input = "25#"
    let output = "y"
    XCTAssertEqual(DecryptStringFromAlphabetToIntegerMapping().freqAlphabets(input), output)
  }

  func testFreqAlphabets4() {
    let input = "12345678910#11#12#13#14#15#16#17#18#19#20#21#22#23#24#25#26#"
    let output = "abcdefghijklmnopqrstuvwxyz"
    XCTAssertEqual(DecryptStringFromAlphabetToIntegerMapping().freqAlphabets(input), output)
  }

  func testFreqAlphabets5() {
    let input = ""
    let output = ""
    XCTAssertEqual(DecryptStringFromAlphabetToIntegerMapping().freqAlphabets(input), output)
  }
}
