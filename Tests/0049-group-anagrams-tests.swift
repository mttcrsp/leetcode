@testable
import Leetcode
import XCTest

final class GroupAnagramsTests: XCTestCase {
  func testTestGroupanagrams1() {
    let input = ["eat", "tea", "tan", "ate", "nat", "bat"]
    let output = [["bat"], ["nat", "tan"], ["ate", "eat", "tea"]]
    XCTAssertEqual(GroupAnagrams().groupAnagrams(input).orderIrrelevant, output.orderIrrelevant)
  }

  func testTestGroupanagrams2() {
    let input = [""]
    let output = [[""]]
    XCTAssertEqual(GroupAnagrams().groupAnagrams(input).orderIrrelevant, output.orderIrrelevant)
  }

  func testTestGroupanagrams3() {
    let input = ["a"]
    let output = [["a"]]
    XCTAssertEqual(GroupAnagrams().groupAnagrams(input).orderIrrelevant, output.orderIrrelevant)
  }
}

private extension Array where Element == [String] {
  var orderIrrelevant: Set<Set<String>> {
    Set(map(Set.init))
  }
}
