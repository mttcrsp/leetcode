extension Solution {
  func canPartition(_ numbers: [Int]) -> Bool {
    var sum = 0
    for number in numbers {
      sum += number
    }

    if sum & 1 == 1 {
      return false
    }

    let target = sum / 2

    var partialSums = [Bool](repeating: false, count: target + 1)
    partialSums[0] = true

    for number in numbers {
      for i in stride(from: target, through: 1, by: -1) where i >= number {
        partialSums[i] = partialSums[i] || partialSums[i - number]
      }
    }

    return partialSums[target]
  }
}
