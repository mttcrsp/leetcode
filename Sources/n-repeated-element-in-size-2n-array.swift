struct NRepeatedElementInSize2NArray {
  func repeatedNTimes(_ A: [Int]) -> Int {
    var set: Set<Int> = []
    for element in A where !set.insert(element).inserted {
      return element
    }
    return -1
  }
}
