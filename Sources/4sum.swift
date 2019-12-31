extension Solution {
    func fourSum(_ numbers: [Int], target: Int) -> [[Int]] {
        var counts: [Int: Int] = [:]
        for number in numbers {
            counts[number, default: 0] += 1
        }

        // Can be optimized a lot but the complexity remains O(n³)
        var result: Set<[Int]> = []
        for indexA in 0 ..< numbers.count {
            for indexB in indexA + 1 ..< numbers.count {
                for indexC in indexB + 1 ..< numbers.count {
                    let a = numbers[indexA]
                    let b = numbers[indexB]
                    let c = numbers[indexC]
                    let d = target - a - b - c

                    guard var countForTarget = counts[d] else { continue }
                    if a == d { countForTarget -= 1 }
                    if b == d { countForTarget -= 1 }
                    if c == d { countForTarget -= 1 }

                    if countForTarget > 0 {
                        result.insert([a, b, c, d].sorted())
                    }
                }
            }
        }
        return Array(result)
    }
}
