extension Solution {
    func maximumProduct(_ numbers: [Int]) -> Int {
        let n = numbers.count
        let sorted = numbers.sorted()
        let candidate1 = sorted[0] * sorted[1] * sorted[n - 1]
        let candidate2 = sorted[n - 1] * sorted[n - 2] * sorted[n - 3]
        return max(candidate1, candidate2)
    }
}
