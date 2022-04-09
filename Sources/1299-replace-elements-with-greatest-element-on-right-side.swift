/// https://leetcode.com/problems/replace-elements-with-greatest-element-on-right-side/
struct ReplaceElementsWithGreatestElementOnRightSide {
  func replaceElements(_ arr: [Int]) -> [Int] {
    var result = [Int](repeating: -1, count: arr.count)
    var max = Int.min
    for inverse in 1 ..< arr.count {
      let i = arr.count - inverse

      if arr[i] > max {
        max = arr[i]
      }

      result[i - 1] = max
    }
    return result
  }
}
