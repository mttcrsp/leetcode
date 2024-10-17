@testable
import Leetcode
import Testing

@Suite
struct FirstUniqueCharacterInAStringTests {
  @Test func testFirstUniqChar1() {
    let input = "leetcode"
    let output = 0
    #expect(FirstUniqueCharacterInAString().firstUniqChar(input) == output)
  }

  @Test func testFirstUniqChar2() {
    let input = "loveleetcode"
    let output = 2
    #expect(FirstUniqueCharacterInAString().firstUniqChar(input) == output)
  }

  @Test func testFirstUniqChar3() {
    let input = "aabb"
    let output = -1
    #expect(FirstUniqueCharacterInAString().firstUniqChar(input) == output)
  }
}
