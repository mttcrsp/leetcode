class NumArray {
    private let nums: [Int]

    init(_ nums: [Int]) {
        self.nums = nums
    }

    func sumRange(_ i: Int, _ j: Int) -> Int {
        // This brute force solution is extremely inefficient from a time
        // perspective but is it the most efficient solution from a space
        // perspective.
        var result = 0
        for index in i ... j {
            result += nums[index]
        }
        return result
    }
}
