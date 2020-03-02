extension Solution {
    func kWeakestRows(_ mat: [[Int]], _ k: Int) -> [Int] {
        var weakestRowsSet: Set<Int> = []
        var weakestRows: [Int] = []

        let rowsCount = mat.count
        let columnsCount = mat.first?.count ?? 0

        for column in 0 ..< columnsCount {
            for row in 0 ..< rowsCount {
                if mat[row][column] == 0, !weakestRowsSet.contains(row) {
                    weakestRowsSet.insert(row)
                    weakestRows.append(row)

                    if weakestRows.count == k {
                        return weakestRows
                    }
                }
            }

            // A more efficient implementation for inputs that contain a large
            // number of weak rows should early exit here when a column is found
            // to only contain zeros. This allows you to spare inspection of
            // columns that you are already sure you will find to be filled with
            // zeros.
        }

        for row in mat.indices where !weakestRowsSet.contains(row) {
            weakestRows.append(row)

            if weakestRows.count == k {
                return weakestRows
            }
        }

        return weakestRows
    }
}
