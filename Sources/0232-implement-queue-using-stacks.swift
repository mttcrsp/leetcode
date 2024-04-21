/// https://leetcode.com/problems/implement-queue-using-stacks/
final class MyQueue {
  private var stack: [Int] = []

  init() {}

  func push(_ x: Int) {
    var tmp: [Int] = []
    while !stack.isEmpty {
      tmp.append(stack.removeLast())
    }

    stack.append(x)
    while !tmp.isEmpty {
      stack.append(tmp.removeLast())
    }
  }

  func pop() -> Int {
    stack.removeLast()
  }

  func peek() -> Int {
    stack.last!
  }

  func empty() -> Bool {
    stack.isEmpty
  }
}
