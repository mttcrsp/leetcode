extension Solution {
    func sortArrayByParity(_ A: [Int]) -> [Int] {
        var numbers = A
        _ = numbers.partition { number in number % 2 == 1 }
        return numbers
    }
}