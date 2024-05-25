/// https://leetcode.com/problems/implement-queue-using-stacks/
final class MyQueue {
  private var insert: [Int] = []
  private var delete: [Int] = []
  init() {}

  func push(_ x: Int) {
    while let top = delete.popLast() {
      insert.append(top)
    }

    insert.append(x)
  }

  func pop() -> Int {
    while let top = insert.popLast() {
      delete.append(top)
    }

    return delete.removeLast()
  }

  func peek() -> Int {
    while let top = insert.popLast() {
      delete.append(top)
    }

    return delete.last!
  }

  func empty() -> Bool {
    insert.isEmpty && delete.isEmpty
  }
}
