extension Solution {
    func fizzBuzz(_ n: Int) -> [String] {
        var result: [String] = []

        for i in 1 ... n {
            let divisible3 = i % 3 == 0
            let divisible5 = i % 5 == 0
            if divisible3, divisible5 {
                result.append("FizzBuzz")
            } else if divisible3 {
                result.append("Fizz")
            } else if divisible5 {
                result.append("Buzz")
            } else {
                result.append(i.description)
            }
        }

        return result
    }
}
