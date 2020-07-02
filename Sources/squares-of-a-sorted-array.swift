extension Solution {
    func sortedSquares(_ A: [Int]) -> [Int] {
        var negatives: [Int] = []
        var result: [Int] = []

        for number in A {
            let squared = number * number

            if number < 0 {
                negatives.append(squared)
                continue
            }

            while let smallestNegative = negatives.last, smallestNegative <= squared {
                result.append(smallestNegative)
                negatives.removeLast()
            }

            result.append(squared)
        }

        for negative in negatives.lazy.reversed() {
            result.append(negative)
        }

        return result
    }
}
