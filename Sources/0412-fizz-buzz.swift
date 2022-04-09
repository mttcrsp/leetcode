/// https://leetcode.com/problems/fizz-buzz/
struct FizzBuzz {
  func fizzBuzz(_ n: Int) -> [String] {
    (1 ... n).map { number in
      let divisible3 = number % 3 == 0
      let divisible5 = number % 5 == 0
      if divisible3, divisible5 {
        return "FizzBuzz"
      } else if divisible3 {
        return "Fizz"
      } else if divisible5 {
        return "Buzz"
      } else {
        return number.description
      }
    }
  }
}
