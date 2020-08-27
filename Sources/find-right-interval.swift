extension Solution {
    func findRightInterval(_ intervals: [[Int]]) -> [Int] {
        let intervalsByStart = intervals.enumerated().sorted { lhs, rhs in
            lhs.element[0] < rhs.element[0]
        }

        let intervalsByEnd = intervals.enumerated().sorted { lhs, rhs in
            lhs.element[1] < rhs.element[1]
        }

        var indices = [Int](repeating: -1, count: intervals.count)
        var i = 0

        for (index, interval) in intervalsByEnd {
            while i < intervalsByStart.count {
                if interval[1] <= intervalsByStart[i].element[0] {
                    indices[index] = intervalsByStart[i].offset
                    break
                } else {
                    i += 1
                }
            }
        }

        return indices
    }
}
