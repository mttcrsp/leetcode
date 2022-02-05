@testable
import Leetcode
import XCTest

final class GroupThePeopleGivenTheGroupSizeTheyBelongToTests: XCTestCase {
  func testGroupThePeople1() {
    let input = [3, 3, 3, 3, 3, 1, 3]
    let output: Set<[Int]> = [[5], [0, 1, 2], [3, 4, 6]]
    let actual = Set(GroupThePeopleGivenTheGroupSizeTheyBelongTo().groupThePeople(input))
    XCTAssertEqual(actual, output)
  }

  func testGroupThePeople2() {
    let input = [2, 1, 3, 3, 3, 2]
    let output: Set<[Int]> = [[1], [0, 5], [2, 3, 4]]
    let actual = Set(GroupThePeopleGivenTheGroupSizeTheyBelongTo().groupThePeople(input))
    XCTAssertEqual(actual, output)
  }
}
