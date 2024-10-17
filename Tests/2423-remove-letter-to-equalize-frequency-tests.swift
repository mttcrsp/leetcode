@testable
import Leetcode
import Testing

@Suite
struct RemoveLetterToEqualizeFrequencyTests {
  @Test func testEqualFrequency1() {
    let input = "abcc"
    let output = true
    #expect(RemoveLetterToEqualizeFrequency().equalFrequency(input) == output)
  }

  @Test func testEqualFrequency2() {
    let input = "aazz"
    let output = false
    #expect(RemoveLetterToEqualizeFrequency().equalFrequency(input) == output)
  }

  @Test func testEqualFrequency3() {
    let input = "ddaccb"
    let output = false
    #expect(RemoveLetterToEqualizeFrequency().equalFrequency(input) == output)
  }

  @Test func testEqualFrequency4() {
    let input = "cccaa"
    let output = true
    #expect(RemoveLetterToEqualizeFrequency().equalFrequency(input) == output)
  }

  @Test func testEqualFrequency5() {
    let input = "aa"
    let output = true
    #expect(RemoveLetterToEqualizeFrequency().equalFrequency(input) == output)
  }

  @Test func testEqualFrequency6() {
    let input = "bac"
    let output = true
    #expect(RemoveLetterToEqualizeFrequency().equalFrequency(input) == output)
  }

  @Test func testEqualFrequency7() {
    let input = "bac"
    let output = true
    #expect(RemoveLetterToEqualizeFrequency().equalFrequency(input) == output)
  }

  @Test func testEqualFrequency8() {
    let input = "aachqpawxanqdkcdycjkewbmiavafhrzzfxrolfbqvywqoiqzdgopjngpgnwiguitudbawbyxputjafdkfgrojdokj"
    let output = false
    #expect(RemoveLetterToEqualizeFrequency().equalFrequency(input) == output)
  }

  @Test func testEqualFrequency9() {
    let input = "zz"
    let output = true
    #expect(RemoveLetterToEqualizeFrequency().equalFrequency(input) == output)
  }

  @Test func testEqualFrequency10() {
    let input = "aazz"
    let output = false
    #expect(RemoveLetterToEqualizeFrequency().equalFrequency(input) == output)
  }

  @Test func testEqualFrequency11() {
    let input = "cccd"
    let output = true
    #expect(RemoveLetterToEqualizeFrequency().equalFrequency(input) == output)
  }
}
