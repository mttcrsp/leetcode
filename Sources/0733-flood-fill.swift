import Collections

/// https://leetcode.com/problems/flood-fill/
struct FloodFill {
  func floodFill(_ image: [[Int]], _ sr: Int, _ sc: Int, _ color: Int) -> [[Int]] {
    let previousColor = image[sr][sc]
    guard previousColor != color else { return image }

    let directions = [[0, 1], [0, -1], [1, 0], [-1, 0]]
    let rows = image.count
    let cols = image[0].count

    var image = image
    var queue: Deque<[Int]> = [[sr, sc]]
    while let point = queue.popFirst() {
      image[point[0]][point[1]] = color
      for direction in directions {
        var nextPoint = point
        nextPoint[0] += direction[0]
        nextPoint[1] += direction[1]
        guard  
          nextPoint[0] >= 0, nextPoint[0] < rows,
          nextPoint[1] >= 0, nextPoint[1] < cols,
          image[nextPoint[0]][nextPoint[1]] == previousColor
        else { continue }
        queue.append(nextPoint)
      }
    }

    return image
  }
}
