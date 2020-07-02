extension Solution {
    func sortArrayByParity(_ A: [Int]) -> [Int] {
        var odds: [Int] = []
        var result: [Int] = []

        for number in A {
            if number % 2 == 0 {
                result.append(number)
            } else {
                odds.append(number)
            }
        }

        result.append(contentsOf: odds)

        return result
    }
}
