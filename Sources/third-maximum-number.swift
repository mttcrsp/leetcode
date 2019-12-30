class Solution {
    func thirdMax(_ nums: [Int]) -> Int {
        var max1: Int!
        var max2: Int!
        var max3: Int!
        for number in nums {
            if number == max1 || number == max2 || number == max3 {
                continue
            }

            if max1 == nil || number > max1 {
                max3 = max2
                max2 = max1
                max1 = number
            } else if max2 == nil || number > max2 {
                max3 = max2
                max2 = number
            } else if max3 == nil || number > max3! {
                max3 = number
            }
        }

        return max3 == nil ? max1 : max3
    }
}
