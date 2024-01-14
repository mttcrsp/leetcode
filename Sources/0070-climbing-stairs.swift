/// https://leetcode.com/problems/climbing-stairs/
struct ClimbingStairs {
  func climbStairs(_ n: Int) -> Int {
    if n == 1 { return 1 }
    if n == 2 { return 2 }

    var prev1 = 1
    var prev2 = 2
    for _ in 3 ... n {
      let sum = prev1+prev2
      prev1 = prev2
      prev2 = sum
    }

    return prev2
  }
}
