extension Solution {
    func findLengthOfLCIS(_ nums: [Int]) -> Int {
        guard !nums.isEmpty else { return 0 }

        var max = 1
        var current = 1

        for (lhs, rhs) in zip(nums, nums.dropFirst()) {
            if rhs > lhs {
                current += 1
                if current > max { max = current }
            } else {
                current = 1
            }
        }

        return max
    }
}
