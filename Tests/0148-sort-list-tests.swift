@testable
import Leetcode
import Testing

@Suite
struct SortListTests {
  @Test func testSortlist1() {
    let input = ListNode([4, 2, 1, 3])
    let output = ListNode([1, 2, 3, 4])
    #expect(SortList().sortList(input)?.debugDescription == output?.debugDescription)
  }

  @Test func testSortlist2() {
    let input = ListNode([-1, 5, 3, 4, 0])
    let output = ListNode([-1, 0, 3, 4, 5])
    #expect(SortList().sortList(input)?.debugDescription == output?.debugDescription)
  }

  @Test func testSortlist3() {
    let input = ListNode([])
    let output = ListNode([])
    #expect(SortList().sortList(input)?.debugDescription == output?.debugDescription)
  }
}
