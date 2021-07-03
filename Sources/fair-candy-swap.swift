struct FairCandySwap {
  func fairCandySwap(_ aliceSizes: [Int], _ bobSizes: [Int]) -> [Int] {
    let (aliceSum, aliceSet) = processSizes(aliceSizes)
    let (bobSum, bobSet) = processSizes(bobSizes)

    let difference = bobSum - aliceSum
    for aliceSize in aliceSet {
      let targetBobSize = aliceSize + (difference / 2)
      if bobSet.contains(targetBobSize) {
        return [aliceSize, targetBobSize]
      }
    }

    preconditionFailure("No solution available")
  }

  private func processSizes(_ sizes: [Int]) -> (sum: Int, set: Set<Int>) {
    var sum = 0
    var set: Set<Int> = []

    for size in sizes {
      sum += size
      set.insert(size)
    }

    return (sum, set)
  }
}
