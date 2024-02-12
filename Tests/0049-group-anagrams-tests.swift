@testable
import Leetcode
import XCTest

final class GroupAnagramsTests: XCTestCase {
  func testGroupanagrams1() {
    let input = ["eat", "tea", "tan", "ate", "nat", "bat"]
    let output = [["bat"], ["nat", "tan"], ["ate", "eat", "tea"]]
    XCTAssertEqual(GroupAnagrams().groupAnagrams(input).orderIrrelevant, output.orderIrrelevant)
  }

  func testGroupanagrams2() {
    let input = [""]
    let output = [[""]]
    XCTAssertEqual(GroupAnagrams().groupAnagrams(input).orderIrrelevant, output.orderIrrelevant)
  }

  func testGroupanagrams3() {
    let input = ["a"]
    let output = [["a"]]
    XCTAssertEqual(GroupAnagrams().groupAnagrams(input).orderIrrelevant, output.orderIrrelevant)
  }
}

private extension [[String]] {
  var orderIrrelevant: Set<Set<String>> {
    Set(map(Set.init))
  }
}
