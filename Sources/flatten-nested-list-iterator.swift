class NestedIterator {
  private var list: [Int]

  init(_ list: [NestedInteger]) {
    self.list = []
    for item in list {
      self.list.append(contentsOf: item.compacted())
    }
  }

  func next() -> Int {
    list.removeFirst()
  }

  func hasNext() -> Bool {
    !list.isEmpty
  }
}

private extension NestedInteger {
  func compacted() -> [Int] {
    if isInteger() {
      return [getInteger()]
    }

    var result: [Int] = []
    for item in getList() {
      result.append(contentsOf: item.compacted())
    }
    return result
  }
}
