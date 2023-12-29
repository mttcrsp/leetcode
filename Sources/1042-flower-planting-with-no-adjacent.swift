/// https://leetcode.com/problems/flower-planting-with-no-adjacent/
struct FlowerPlantingWithNoAdjacent {
  func gardenNoAdj(_ N: Int, _ paths: [[Int]]) -> [Int] {
    let types = Set(1 ... 4)

    var adjacentGardens: [Int: Set<Int>] = [:]
    for path in paths {
      let garden1 = path[0]
      let garden2 = path[1]
      adjacentGardens[garden1, default: []].insert(garden2)
      adjacentGardens[garden2, default: []].insert(garden1)
    }

    var assignments: [Int: Int] = [:]
    for garden in 1 ... N {
      let neighbours = adjacentGardens[garden, default: []]
      let neighboursTypes = neighbours.compactMap { neighbour in
        assignments[neighbour]
      }

      let compatibleTypes = types.subtracting(neighboursTypes)
      if let assignment = compatibleTypes.first {
        assignments[garden] = assignment
      } else {
        assertionFailure("Unable to solve for \(N) gardens and paths: \(paths)")
      }
    }

    var gardens = [Int](repeating: 1, count: N)
    for (index, assignment) in assignments {
      gardens[index-1] = assignment
    }

    return gardens
  }
}
