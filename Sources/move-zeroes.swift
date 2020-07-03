extension Solution {
    func moveZeroes(_ numbers: inout [Int]) {
        var j = 0
        for i in numbers.indices {
            if numbers[i] != 0 {
                numbers.swapAt(i, j)
                j += 1
            }
        }
    }
}
