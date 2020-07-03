extension Solution {
    func moveZeroes(_ numbers: inout [Int]) {
        var valid = 0
        var zeros = 0
        while valid + zeros < numbers.count {
            if numbers[valid] == 0 {
                var i = valid
                while i < numbers.count - 1 - zeros {
                    numbers.swapAt(i, i + 1)
                    i += 1
                }

                zeros += 1
            } else {
                valid += 1
            }
        }
    }
}
