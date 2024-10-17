@testable
import Leetcode
import Testing

@Suite
struct NumberOfValidWordsInASentenceTests {
  @Test func testCountvalidwords1() {
    let input = "cat and  dog"
    let output = 3
    #expect(NumberOfValidWordsInASentence().countValidWords(input) == output)
  }

  @Test func testCountvalidwords2() {
    let input = "!this  1-s b8d!"
    let output = 0
    #expect(NumberOfValidWordsInASentence().countValidWords(input) == output)
  }

  @Test func testCountvalidwords3() {
    let input = "alice and  bob are playing stone-game10"
    let output = 5
    #expect(NumberOfValidWordsInASentence().countValidWords(input) == output)
  }

  @Test func testCountvalidwords4() {
    let input = "alic,e"
    let output = 0
    #expect(NumberOfValidWordsInASentence().countValidWords(input) == output)
  }

  @Test func testCountvalidwords5() {
    let input = "alic,, a"
    let output = 1
    #expect(NumberOfValidWordsInASentence().countValidWords(input) == output)
  }

  @Test func testCountvalidwords6() {
    let input = "al-i-c"
    let output = 0
    #expect(NumberOfValidWordsInASentence().countValidWords(input) == output)
  }

  @Test func testCountvalidwords7() {
    let input = "-"
    let output = 0
    #expect(NumberOfValidWordsInASentence().countValidWords(input) == output)
  }

  @Test func testCountvalidwords8() {
    let input = "a-"
    let output = 0
    #expect(NumberOfValidWordsInASentence().countValidWords(input) == output)
  }

  @Test func testCountvalidwords9() {
    let input = "-a"
    let output = 0
    #expect(NumberOfValidWordsInASentence().countValidWords(input) == output)
  }

  @Test func testCountvalidwords10() {
    let input = "!g 3 !sy "
    let output = 0
    #expect(NumberOfValidWordsInASentence().countValidWords(input) == output)
  }
}
