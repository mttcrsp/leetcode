/// https://leetcode.com/problems/buildings-with-an-ocean-view/
struct BuildingsWithAnOceanView {
  func findBuildings(_ heights: [Int]) -> [Int] {
    var result: [Int] = []
    var max = 0
    for (index, height) in heights.enumerated().reversed() {
      if height > max {
        result.append(index)
        max = height
      }
    }
    return result.reversed()
  }
}
