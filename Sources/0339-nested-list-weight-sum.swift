class NestedListWeightSum {
  func depthSum(_ nestedList: [NestedInteger]) -> Int {
    var sum = 0
    var stack = [(nestedList, 1)]
    while let (list, depth) = stack.popLast() {
      for element in list {
        if element.isInteger() {
          sum += element.getInteger()*depth
        } else {
          stack.append((element.getList(), depth+1))
        }
      }
    }

    return sum
  }
}
