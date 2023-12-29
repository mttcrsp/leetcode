/// https://leetcode.com/problems/sort-array-by-parity/
struct SortArrayByParity {
  func sortArrayByParity(_ A: [Int]) -> [Int] {
    var numbers = A
    _ = numbers.partition { number in number%2 == 1 }
    return numbers
  }
}
