extension Solution {
    func rob(_ nums: [Int]) -> Int {
        var sums = [0, 0]

        for (index, value) in nums.enumerated() {
            let take = sums[index] + value
            let skip = sums[index + 1]
            sums.append(max(take, skip))
        }

        return sums.last ?? 0
    }
}
