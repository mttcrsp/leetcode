extension Solution {
    func addDigits(_ num: Int) -> Int {
        var digits = num.digits
        while digits.count != 1 {
            digits = digits.sum().digits
        }
        return digits[0]
    }
}

private extension Int {
    var digits: [Int] {
        guard self != 0 else {
            return [0]
        }

        var number = self
        var result: [Int] = []
        while number > 0 {
            result.append(number % 10)
            number /= 10
        }
        return result
    }
}

private extension Array where Element == Int {
    func sum() -> Int {
        var result = 0
        for number in self {
            result += number
        }
        return result
    }
}
