/// https://leetcode.com/problems/add-digits/
struct AddDigits {
  func addDigits(_ num: Int) -> Int {
    1 + (num - 1) % 9
  }
}
