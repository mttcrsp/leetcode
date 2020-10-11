extension Solution {
  func findRestaurant(_ list1: [String], _ list2: [String]) -> [String] {
    let enumeratedDictionary1 = list1.enumeratedDictionary()
    let enumeratedDictionary2 = list2.enumeratedDictionary()
    let commonRestaurants = Set(list1).intersection(list2)

    var min: (indexSum: Int, restaurants: [String])?
    for restaurant in commonRestaurants {
      let index1 = enumeratedDictionary1[restaurant]!
      let index2 = enumeratedDictionary2[restaurant]!
      let newIndexSum = index1 + index2

      if let (indexSum, restaurants) = min {
        if newIndexSum < indexSum {
          min = (newIndexSum, [restaurant])
        } else if newIndexSum == indexSum {
          min = (newIndexSum, [restaurant] + restaurants)
        }
      } else {
        min = (newIndexSum, [restaurant])
      }
    }

    return min?.restaurants ?? []
  }
}

private extension Array where Element: Hashable {
  func enumeratedDictionary() -> [Element: Int] {
    var dictionary: [Element: Int] = [:]
    for (index, element) in enumerated() {
      dictionary[element] = index
    }
    return dictionary
  }
}
