class Solution {
    func compress(_ chars: inout [Character]) -> Int {
        let indices = chars.indices

        var count = 1
        for (lhs, rhs) in zip(indices, indices.dropFirst()).reversed() {
            if chars[lhs] == chars[rhs] {
                chars.remove(at: rhs)
                count += 1
            } else if count > 1 {
                chars.insert(count, at: rhs + 1)
                count = 1
            }
        }

        if count > 1 {
            chars.insert(count, at: 1)
        }

        return chars.count
    }
}

private extension Array where Element == Character {
    mutating func insert(_ value: Int, at index: Index) {
        let valueString = String(describing: value)
        let valueCharacters = Array(valueString)
        insert(contentsOf: valueCharacters, at: index)
    }
}
