extension Solution {
    func maximumProduct(_ numbers: [Int]) -> Int {
        var positives: [Int] = []
        var negatives: [Int] = []

        var foundFullPositive = false
        var foundDoubleNegative = false

        let sorted = numbers.sorted { lhs, rhs in abs(lhs) > abs(rhs) }
        for number in sorted {
            if number > 0 {
                positives.append(number)
            } else {
                negatives.append(number)
            }

            foundFullPositive = positives.count >= 3
            foundDoubleNegative = negatives.count >= 2 && positives.count >= 1

            if foundFullPositive, foundDoubleNegative {
                break
            }
        }

        var max = sorted.suffix(3).reduce(1, *)

        if foundFullPositive {
            max = Swift.max(max, positives[0] * positives[1] * positives[2])
        }

        if foundDoubleNegative {
            max = Swift.max(max, negatives[0] * negatives[1] * positives[0])
        }

        return max
    }
}
