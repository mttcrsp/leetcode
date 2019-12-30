class Solution {
    func sumEvenAfterQueries(_ A: [Int], _ queries: [[Int]]) -> [Int] {
        var result: [Int] = []
        var current = A

        var sum = 0
        for element in current where element.isEven {
            sum += element
        }

        for query in queries {
            let value = query[0]
            let index = query[1]
            let oldValue = current[index]
            let newValue = current[index] + value
            current[index] = newValue

            switch (oldValue.isEven, newValue.isEven) {
            case (true, true): sum += value
            case (true, false): sum -= oldValue
            case (false, true): sum += newValue
            case (false, false): break
            }
            result.append(sum)
        }

        return result
    }
}

private extension Int {
    var isEven: Bool { return self % 2 == 0 }
}
