@testable
import Leetcode
import Testing

@Suite
struct VerifyingAnAlienDictionaryTests {
  @Test func testIsAlienSorted1() {
    let input = (["hello", "leetcode"], "hlabcdefgijkmnopqrstuvwxyz")
    let output = true
    #expect(VerifyingAnAlienDictionary().isAlienSorted(input.0, input.1) == output)
  }

  @Test func testIsAlienSorted2() {
    let input = (["word", "world", "row"], "worldabcefghijkmnpqstuvxyz")
    let output = false
    #expect(VerifyingAnAlienDictionary().isAlienSorted(input.0, input.1) == output)
  }

  @Test func testIsAlienSorted3() {
    let input = (["apple", "app"], "abcdefghijklmnopqrstuvwxyz")
    let output = false
    #expect(VerifyingAnAlienDictionary().isAlienSorted(input.0, input.1) == output)
  }
}
