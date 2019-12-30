class Solution {
    func maxRotateFunction(_ A: [Int]) -> Int {
        guard !A.isEmpty else { return 0 }

        var sum = 0
        var current = 0
        for (offset, value) in A.enumerated() {
            current += value * offset
            sum += value
        }

        var max = current
        for value in A.dropFirst().reversed() {
            current = current + (sum - value) - (value * (A.count - 1))

            if current > max {
                max = current
            }
        }

        return max
    }
}
