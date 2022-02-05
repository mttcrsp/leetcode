struct GroupThePeopleGivenTheGroupSizeTheyBelongTo {
  func groupThePeople(_ groupSizes: [Int]) -> [[Int]] {
    var result: [[Int]] = []

    var groups: [Int: [Int]] = [:]
    for (person, groupSize) in groupSizes.enumerated() {
      groups[groupSize, default: []].append(person)
      if let group = groups[groupSize], group.count == groupSize {
        result.append(group)
        groups.removeValue(forKey: groupSize)
      }
    }

    return result
  }
}
