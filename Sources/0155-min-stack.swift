class MinStack {
  private typealias Element = (val: Int, min: Int)

  private var elements: [Element] = []

  func push(_ val: Int) {
    if let previous = elements.last {
      elements.append((val, min(previous.min, val)))
    } else {
      elements.append((val, val))
    }
  }

  func pop() {
    elements.removeLast()
  }

  func top() -> Int {
    elements.last!.val
  }

  func getMin() -> Int {
    elements.last!.min
  }
}
