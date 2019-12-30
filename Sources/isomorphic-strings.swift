class Solution {
    func isIsomorphic(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else { return false }

        var mappingS: [Character: Character] = [:]
        var mappingT: [Character: Character] = [:]

        for (characterS, characterT) in zip(s, t) {
            let translationS = mappingS[characterS]
            guard translationS == nil || translationS == characterT else { return false }
            mappingS[characterS] = characterT

            let translationT = mappingT[characterT]
            guard translationT == nil || translationT == characterS else { return false }
            mappingT[characterT] = characterS
        }

        return true
    }
}
