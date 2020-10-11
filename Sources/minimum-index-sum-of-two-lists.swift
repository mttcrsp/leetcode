extension Solution {
  func findRestaurant(_ list1: [String], _ list2: [String]) -> [String] {
    var indices: [String: Int] = [:]
    for (index, restaurant) in list1.enumerated() {
      indices[restaurant] = index
    }

    var min: (indexSum: Int, restaurants: [String])?
    for (index2, restaurant) in list2.enumerated() {
      guard let index1 = indices[restaurant] else {
        continue
      }

      let newIndexSum = index1 + index2
      guard let (indexSum, restaurants) = min else {
        min = (newIndexSum, [restaurant]); continue
      }

      if newIndexSum < indexSum {
        min = (newIndexSum, [restaurant])
      } else if newIndexSum == indexSum {
        min = (newIndexSum, [restaurant] + restaurants)
      }
    }

    return min?.restaurants ?? []
  }
}
