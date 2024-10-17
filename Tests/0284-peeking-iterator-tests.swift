@testable
import Leetcode
import Testing

@Suite
struct PeekingIteratorTests {
  @Test func testPeekingIterator1() {
    let peekingIterator = PeekingIterator(IndexingIterator(_elements: [1, 2, 3]))
    #expect(peekingIterator.next() == 1) // return 1, the pointer moves to the next element [1,2,3].
    #expect(peekingIterator.peek() == 2) // return 2, the pointer does not move [1,2,3].
    #expect(peekingIterator.next() == 2) // return 2, the pointer moves to the next element [1,2,3]
    #expect(peekingIterator.next() == 3) // return 3, the pointer moves to the next element [1,2,3]
    #expect(!peekingIterator.hasNext()) // return False
  }
}
