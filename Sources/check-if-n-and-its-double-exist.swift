struct CheckIfNAndItsDoubleExist {
  func checkIfExist(_ numbers: [Int]) -> Bool {
    var previouses: Set<Int> = []
    for number in numbers {
      let isEven = number % 2 == 0
      let containsHalf = isEven && previouses.contains(number / 2)
      let containsDouble = previouses.contains(number * 2)
      if containsHalf || containsDouble {
        return true
      } else {
        previouses.insert(number)
      }
    }

    return false
  }
}
