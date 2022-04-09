/// https://leetcode.com/problems/container-with-most-water/
struct ContainerWithMostWater {
  func maxArea(_ heights: [Int]) -> Int {
    var lhs = 0
    var rhs = heights.count - 1
    var max = min(heights[lhs], heights[rhs]) * (rhs - lhs)

    while lhs < rhs {
      if heights[lhs] < heights[rhs] {
        lhs += 1
      } else {
        rhs -= 1
      }

      max = Swift.max(max, min(heights[lhs], heights[rhs]) * (rhs - lhs))
    }

    return max
  }
}
