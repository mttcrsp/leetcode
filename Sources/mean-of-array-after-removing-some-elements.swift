import Foundation

struct MeanOfArrayAfterRemovingSomeElements {
  func trimMean(_ numbers: [Int]) -> Double {
    let sortedNumbers = numbers.sorted()
    let excluded = numbers.count / 20
    let validNumbers = sortedNumbers[excluded ..< numbers.count - excluded]

    var sum: Double = 0
    for number in validNumbers {
      sum += Double(number)
    }
    return sum / Double(validNumbers.count)
  }
}
