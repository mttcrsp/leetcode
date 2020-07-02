extension Solution {
    func sortedSquares(_ A: [Int]) -> [Int] {
        var i = A.count - 1
        var lhs = 0
        var rhs = i
        var result = [Int](repeating: 0, count: A.count)

        while i >= 0 {
            if abs(A[lhs]) > abs(A[rhs]) {
                result[i] = A[lhs] * A[lhs]
                lhs += 1
            } else {
                result[i] = A[rhs] * A[rhs]
                rhs -= 1
            }
            i -= 1
        }

        return result
    }
}
