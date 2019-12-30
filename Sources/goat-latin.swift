extension Solution {
    func toGoatLatin(_ S: String) -> String {
        var result: [String.SubSequence] = []

        for (i, var word) in S.split(separator: " ").enumerated() {
            guard let first = word.first else { continue }

            let startsWithVowel = ["a", "e", "i", "o", "u"].contains(first.lowercased())
            if startsWithVowel {
                word.append(contentsOf: "ma")
            } else {
                word.append(contentsOf: String(word.removeFirst()) + "ma")
            }

            let suffixLength = word.contains("a") ? i + 1 : 0
            let suffix = String(Array(repeating: "a", count: suffixLength))
            word.append(contentsOf: suffix)

            result.append(word)
        }

        return result.joined(separator: " ")
    }
}
