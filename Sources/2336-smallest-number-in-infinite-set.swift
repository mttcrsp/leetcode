class SmallestInfiniteSet {
  var lowerBound = 1
  var addedBack: Set<Int> = []

  init() {}

  func popSmallest() -> Int {
    if let min = addedBack.min() {
      addedBack.remove(min)
      return min
    } else {
      defer { lowerBound += 1 }
      return lowerBound
    }
  }

  func addBack(_ num: Int) {
    if num < lowerBound {
      addedBack.insert(num)
    }
  }
}
