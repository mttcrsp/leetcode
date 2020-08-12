extension Solution {
    func getRow(_ rowIndex: Int) -> [Int] {
        if rowIndex == 0 { return [1] }
        if rowIndex == 1 { return [1, 1] }

        var firstHalf = [1]
        for k in 2 ... rowIndex {
            var tail: Int?
            if k & 1 == 0 {
                tail = firstHalf.last! * 2
            }

            for i in stride(from: firstHalf.count - 1, to: 0, by: -1) {
                firstHalf[i] = firstHalf[i] + firstHalf[i - 1]
            }

            if let tail = tail {
                firstHalf.append(tail)
            }
        }

        var secondHalf = Array(firstHalf.reversed())

        if rowIndex & 1 == 0 {
            secondHalf.removeFirst()
        }

        return firstHalf + secondHalf
    }
}
