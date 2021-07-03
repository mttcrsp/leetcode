class KthLargest {
  private var current: [Int]
  private let maxSize: Int

  init(_ k: Int, _ nums: [Int]) {
    current = nums.sorted().suffix(k)
    maxSize = k
  }

  func add(_ val: Int) -> Int {
    let index = current.firstIndex(where: { $0 > val }) ?? current.count
    current.insert(val, at: index)

    if current.count > maxSize {
      current.removeFirst()
    }

    return current.first ?? 0
  }
}
