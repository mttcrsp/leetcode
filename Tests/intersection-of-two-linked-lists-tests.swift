@testable
import Leetcode
import XCTest

final class IntersectionOfTwoLinkedListsTests: XCTestCase {
  func testGetIntersectionNode1() {
    testGetIntersectionNode(
      withIntersection: [ListNode(8), ListNode(4), ListNode(5)],
      specificA: [ListNode(4), ListNode(1)],
      specificB: [ListNode(5), ListNode(6), ListNode(1)]
    )
  }

  func testGetIntersectionNode2() {
    testGetIntersectionNode(
      withIntersection: [ListNode(2), ListNode(4)],
      specificA: [ListNode(1), ListNode(9), ListNode(1)],
      specificB: [ListNode(3)]
    )
  }

  func testGetIntersectionNode3() {
    testGetIntersectionNode(
      withIntersection: [],
      specificA: [ListNode(2), ListNode(6), ListNode(4)],
      specificB: [ListNode(1), ListNode(5)]
    )
  }

  func testGetIntersectionNode4() {
    testGetIntersectionNode(
      withIntersection: [ListNode(2)],
      specificA: [ListNode(1)],
      specificB: []
    )
  }

  private func testGetIntersectionNode(withIntersection intersection: [ListNode], specificA: [ListNode], specificB: [ListNode], file: StaticString = #filePath, line: UInt = #line) {
    let (listA, listB) = makeLists(withIntersection: intersection, specificA: specificA, specificB: specificB)
    let actual: ListNode? = IntersectionOfTwoLinkedLists().getIntersectionNode(listA, listB)
    let expect: ListNode? = intersection.isEmpty ? .none : .some(intersection[0])
    XCTAssert(actual === expect, file: file, line: line)
  }

  private func makeLists(withIntersection intersection: [ListNode], specificA: [ListNode], specificB: [ListNode]) -> (ListNode?, ListNode?) {
    (
      makeList(from: specificA + intersection),
      makeList(from: specificB + intersection)
    )
  }

  private func makeList(from nodes: [ListNode]) -> ListNode? {
    for (lhs, rhs) in zip(nodes, nodes.dropFirst()) {
      lhs.next = rhs
    }
    return nodes.first
  }
}
