extension Solution {
    func findRepeatedDnaSequences(_ s: String) -> [String] {
        var dictionary: [Substring: Int] = [:]
        for index in s.indices.dropLast(9) {
            let index1 = index
            let index2 = s.index(index, offsetBy: 10)
            dictionary[s[index1 ..< index2], default: 0] += 1
        }

        var result: [String] = []
        for (substring, occurrences) in dictionary where occurrences > 1 {
            result.append(String(substring))
        }
        return result
    }
}
