@testable
import Leetcode
import XCTest

final class StickersToSpellWordTests: XCTestCase {
  func testMinStickers1() {
    let input = (["with", "example", "science"], "thehat")
    let output = 3
    XCTAssertEqual(StickersToSpellWord().minStickers(input.0, input.1), output)
  }

  func testMinStickers2() {
    let input = (["notice", "possible"], "basicbasic")
    let output = -1
    XCTAssertEqual(StickersToSpellWord().minStickers(input.0, input.1), output)
  }

  func testMinStickers3() {
    let input = (["wear", "oh", "wheel", "famous", "observe", "dictionary", "bought", "salt", "stop", "pretty", "result", "hour", "great", "me", "dollar", "valley", "bear", "table", "slow", "before", "fall", "kept", "charge", "excite", "page", "degree", "present", "talk", "help", "held", "happy", "and", "hope", "beauty", "be", "stead", "car", "now", "them", "trip", "season", "condition", "excite", "history", "page", "again", "silver"], "nmgoodlodlzt")
    let output = -1
    XCTAssertEqual(StickersToSpellWord().minStickers(input.0, input.1), output)
  }
}
