@testable
import Leetcode
import Testing

@Suite
struct GroupThePeopleGivenTheGroupSizeTheyBelongToTests {
  @Test func testGroupThePeople1() {
    let input = [3, 3, 3, 3, 3, 1, 3]
    let output: Set<[Int]> = [[5], [0, 1, 2], [3, 4, 6]]
    let actual = Set(GroupThePeopleGivenTheGroupSizeTheyBelongTo().groupThePeople(input))
    #expect(actual == output)
  }

  @Test func testGroupThePeople2() {
    let input = [2, 1, 3, 3, 3, 2]
    let output: Set<[Int]> = [[1], [0, 5], [2, 3, 4]]
    let actual = Set(GroupThePeopleGivenTheGroupSizeTheyBelongTo().groupThePeople(input))
    #expect(actual == output)
  }
}
