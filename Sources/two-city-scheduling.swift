class Solution {
    func twoCitySchedCost(_ costs: [[Int]]) -> Int {
        var costsWithDifferences = costs.map { cost in (difference: cost[0] - cost[1], priceForA: cost[0], priceForB: cost[1]) }

        // Could be improved with linear time integer sorting via radix sort
        costsWithDifferences.sort { lhs, rhs in lhs.difference < rhs.difference }

        var result = 0
        for (i, costWithDifference) in costsWithDifferences.enumerated() {
            if i < costsWithDifferences.count / 2 {
                result += costWithDifference.priceForA
            } else {
                result += costWithDifference.priceForB
            }
        }
        return result
    }
}
