/// https://leetcode.com/problems/power-of-three/
struct PowerOfThree {
  func isPowerOfThree(_ n: Int) -> Bool {
    n > 0 && 1_162_261_467%n == 0
  }
}
