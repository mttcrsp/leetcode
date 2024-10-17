@testable
import Leetcode
import Testing

@Suite
struct GroupAnagramsTests {
  @Test func testGroupanagrams1() {
    let input = ["eat", "tea", "tan", "ate", "nat", "bat"]
    let output = [["bat"], ["nat", "tan"], ["ate", "eat", "tea"]]
    #expect(GroupAnagrams().groupAnagrams(input).orderIrrelevant == output.orderIrrelevant)
  }

  @Test func testGroupanagrams2() {
    let input = [""]
    let output = [[""]]
    #expect(GroupAnagrams().groupAnagrams(input).orderIrrelevant == output.orderIrrelevant)
  }

  @Test func testGroupanagrams3() {
    let input = ["a"]
    let output = [["a"]]
    #expect(GroupAnagrams().groupAnagrams(input).orderIrrelevant == output.orderIrrelevant)
  }
}

private extension [[String]] {
  var orderIrrelevant: Set<Set<String>> {
    Set(map(Set.init))
  }
}
