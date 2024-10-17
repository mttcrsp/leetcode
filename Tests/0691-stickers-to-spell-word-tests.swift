@testable
import Leetcode
import Testing

@Suite
struct StickersToSpellWordTests {
  @Test func testMinStickers1() {
    let input = (["with", "example", "science"], "thehat")
    let output = 3
    #expect(StickersToSpellWord().minStickers(input.0, input.1) == output)
  }

  @Test func testMinStickers2() {
    let input = (["notice", "possible"], "basicbasic")
    let output = -1
    #expect(StickersToSpellWord().minStickers(input.0, input.1) == output)
  }

  @Test func testMinStickers3() {
    let input = (["wear", "oh", "wheel", "famous", "observe", "dictionary", "bought", "salt", "stop", "pretty", "result", "hour", "great", "me", "dollar", "valley", "bear", "table", "slow", "before", "fall", "kept", "charge", "excite", "page", "degree", "present", "talk", "help", "held", "happy", "and", "hope", "beauty", "be", "stead", "car", "now", "them", "trip", "season", "condition", "excite", "history", "page", "again", "silver"], "nmgoodlodlzt")
    let output = -1
    #expect(StickersToSpellWord().minStickers(input.0, input.1) == output)
  }
}
