extension Solution {
    func canPartition(_ numbers: [Int]) -> Bool {
        var partialSums: Set<Int> = [0]
        var sum = 0

        for number in numbers {
            sum += number

            for partialSum in partialSums {
                partialSums.insert(partialSum + number)
            }
        }

        if sum % 2 == 0 {
            return partialSums.contains(sum / 2)
        } else {
            return false
        }
    }
}
