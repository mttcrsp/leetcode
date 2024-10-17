@testable
import Leetcode
import Testing

@Suite
struct BinarySearchTreeIteratorTests {
  @Test func testBstIterator1() {
    let iterator = BSTIterator(TreeNode([7, 3, 15, nil, nil, 9, 20]))
    #expect(iterator.next() == 3)
    #expect(iterator.next() == 7)
    #expect(iterator.hasNext())
    #expect(iterator.next() == 9)
    #expect(iterator.hasNext())
    #expect(iterator.next() == 15)
    #expect(iterator.hasNext())
    #expect(iterator.next() == 20)
    #expect(!iterator.hasNext())
  }
}
