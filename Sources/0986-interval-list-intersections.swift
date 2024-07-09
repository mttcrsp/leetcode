/// https://leetcode.com/problems/interval-list-intersections/
struct IntervalListIntersections {
  func intervalIntersection(_ firstList: [[Int]], _ secondList: [[Int]]) -> [[Int]] {
    var i = 0
    var j = 0
    var result: [[Int]] = []
    while i < firstList.count, j < secondList.count {
      let startI = firstList[i][0]
      let startJ = secondList[j][0]
      let endI = firstList[i][1]
      let endJ = secondList[j][1]
      let maxStart = max(startI, startJ)
      let minEnd = min(endI, endJ)
      if maxStart <= minEnd {
        result.append([maxStart, minEnd])
      }

      if endI < endJ {
        i += 1
      } else {
        j += 1
      }
    }

    return result
  }
}
