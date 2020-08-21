extension Solution {
    func numRescueBoats(_ people: [Int], _ limit: Int) -> Int {
        assert(people.allSatisfy { weight in weight <= limit })

        var countsForWeight: [Int: Int] = [:]
        for weight in people {
            countsForWeight[weight, default: 0] += 1
        }

        var numberOfBoats = 0
        var sortedCountsForWeight = countsForWeight.sorted { lhs, rhs in
            lhs.key < rhs.key
        }

        while let (fatWeight, fatCount) = sortedCountsForWeight.last,
            let (thinWeight, thinCount) = sortedCountsForWeight.first
        {
            if fatWeight + thinWeight > limit {
                numberOfBoats += fatCount
                sortedCountsForWeight.removeLast()
            } else if thinCount > fatCount {
                numberOfBoats += fatCount
                sortedCountsForWeight[0].value -= fatCount
                sortedCountsForWeight.removeLast()
            } else if fatCount > thinCount {
                numberOfBoats += thinCount
                sortedCountsForWeight[sortedCountsForWeight.count - 1].value -= thinCount
                sortedCountsForWeight.removeFirst()
            } else if thinCount == fatCount {
                if thinWeight == fatWeight {
                    numberOfBoats += (fatCount / 2) + (fatCount % 2)
                    sortedCountsForWeight.removeLast()
                } else {
                    numberOfBoats += fatCount
                    sortedCountsForWeight.removeFirst()
                    sortedCountsForWeight.removeLast()
                }
            }
        }

        return numberOfBoats
    }
}
