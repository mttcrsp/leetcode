extension Solution {
    func replaceElements(_ arr: [Int]) -> [Int] {
        var result = [Int](repeating: -1, count: arr.count)
        var max = Int.min
        for (i, number) in arr.dropFirst().enumerated().reversed() {
            if number > max {
                max = number
            }
            result[i] = max
        }
        return result
    }
}
