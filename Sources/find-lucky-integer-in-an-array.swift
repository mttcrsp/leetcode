struct FindLuckyIntegerInAnArray {
  func findLucky(_ numbers: [Int]) -> Int {
    var counts: [Int: Int] = [:]
    for number in numbers {
      counts[number, default: 0] += 1
    }

    var luckyNumber: Int = .min
    for (number, count) in counts where number == count {
      luckyNumber = max(number, luckyNumber)
    }
    return luckyNumber == .min ? -1 : luckyNumber
  }
}
