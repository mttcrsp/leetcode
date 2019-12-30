class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        for i in nums.indices.reversed().dropFirst() where nums[i] == nums[i + 1] {
            nums.remove(at: i)
        }
        return nums.count
    }
}
