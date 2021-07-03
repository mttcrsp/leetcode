struct PartitionArrayIntoThreePartsWithEqualSum {
  func canThreePartsEqualSum(_ A: [Int]) -> Bool {
    var sum = 0
    var sums: [Int] = []
    for element in A where element != 0 {
      sum += element
      sums.append(sum)
    }

    guard sum % 3 == 0 else {
      return false
    }

    let partitionSum = sum / 3

    sums.removeAll { sum in
      sum % partitionSum != 0
    }

    var targetSum = partitionSum
    for sum in sums where sum == targetSum {
      targetSum += partitionSum
    }
    return targetSum == sum + partitionSum
  }
}
