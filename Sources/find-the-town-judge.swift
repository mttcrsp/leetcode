extension Solution {
    func findJudge(_ N: Int, _ trust: [[Int]]) -> Int {
        if N == 1 {
            return 1
        }

        var trusts: [Int: Set<Int>] = [:]
        var isTrusted: [Int: Set<Int>] = [:]

        for element in trust {
            let truster = element[0]
            let trusted = element[1]
            trusts[truster, default: []].insert(trusted)
            isTrusted[trusted, default: []].insert(truster)
        }

        for (person, trusters) in isTrusted where trusters.count == N - 1 && trusts[person, default: []].isEmpty {
            return person
        }
        return -1
    }
}
