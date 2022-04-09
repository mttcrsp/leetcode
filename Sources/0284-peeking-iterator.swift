/// https://leetcode.com/problems/peeking-iterator/
class PeekingIterator {
  private var iterator: IndexingIterator<[Int]>
  private var value: Int?

  init(_ iterator: IndexingIterator<[Int]>) {
    self.iterator = iterator
    value = self.iterator.next()
  }

  func next() -> Int {
    let result = value
    value = iterator.next()
    return result!
  }

  func peek() -> Int {
    value!
  }

  func hasNext() -> Bool {
    value != nil
  }
}
