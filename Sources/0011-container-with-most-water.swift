/// https://leetcode.com/problems/container-with-most-water/
struct ContainerWithMostWater {
  func maxArea(_ height: [Int]) -> Int {
    var lhs = 0
    var rhs = height.count - 1
    var area = 0

    while lhs < rhs {
      area = max(area, (rhs - lhs) * min(height[lhs], height[rhs]))
      if height[lhs] < height[rhs] {
        lhs += 1
      } else {
        rhs -= 1
      }
    }

    return area
  }
}
