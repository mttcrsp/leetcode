extension Solution {
    func escapeGhosts(_ ghosts: [[Int]], _ target: [Int]) -> Bool {
        let yourDistance = distance(between: target, [0, 0])
        for ghost in ghosts where distance(between: ghost, target) <= yourDistance {
            return false
        }
        return true
    }

    private func distance(between a: [Int], _ b: [Int]) -> Int {
        return abs(a[0] - b[0]) + abs(a[1] - b[1])
    }
}
