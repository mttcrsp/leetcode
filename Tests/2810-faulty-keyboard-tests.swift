@testable
import Leetcode
import Testing

@Suite
struct FaultyKeyboardTests {
  @Test func testFinalstring1() {
    let input = "string"
    let output = "rtsng"
    #expect(FaultyKeyboard().finalString(input) == output)
  }

  @Test func testFinalstring2() {
    let input = "poiinter"
    let output = "ponter"
    #expect(FaultyKeyboard().finalString(input) == output)
  }

  @Test func testFinalstring3() {
    let input = "something"
    let output = "htemosng"
    #expect(FaultyKeyboard().finalString(input) == output)
  }

  @Test func testFinalstring4() {
    let input = "finalfailed"
    let output = "aflanfled"
    #expect(FaultyKeyboard().finalString(input) == output)
  }

  @Test func testFinalstring5() {
    let input = "asiiiasiiidf"
    let output = "saasdf"
    #expect(FaultyKeyboard().finalString(input) == output)
  }

  @Test func testFinalstring6() {
    let input = "asikjdfhaskiiildfihaiii"
    let output = "ahksahfdjkasldf"
    #expect(FaultyKeyboard().finalString(input) == output)
  }

  @Test func testFinalstring7() {
    let input = "abicdief"
    let output = "dcabef"
    #expect(FaultyKeyboard().finalString(input) == output)
  }
}
