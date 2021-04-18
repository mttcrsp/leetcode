struct SquaresOfASortedArray {
  func sortedSquares(_ numbers: [Int]) -> [Int] {
    var positives: [Int] = []
    var negatives: [Int] = []
    for number in numbers {
      let square = number * number
      if number >= 0 {
        positives.append(square)
      } else {
        negatives.append(square)
      }
    }

    var i = 0
    var j = negatives.count - 1
    var result: [Int] = []
    while i < positives.count || j >= 0 {
      if i >= positives.count {
        result.append(negatives[j]); j -= 1
        continue
      }

      if j < 0 {
        result.append(positives[i]); i += 1
        continue
      }

      if positives[i] < negatives[j] {
        result.append(positives[i]); i += 1
      } else {
        result.append(negatives[j]); j -= 1
      }
    }

    return result
  }
}
