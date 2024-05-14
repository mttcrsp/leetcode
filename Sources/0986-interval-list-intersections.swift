/// https://leetcode.com/problems/interval-list-intersections/
struct IntervalListIntersections {
  func intervalIntersection(_ firstList: [[Int]], _ secondList: [[Int]]) -> [[Int]] {
    var i = 0
    var j = 0
    var result: [[Int]] = []
    while i < firstList.count, j < secondList.count {
      let si = firstList[i][0]
      let sj = secondList[j][0]
      let ei = firstList[i][1]
      let ej = secondList[j][1]
      let sMax = max(si, sj)
      let eMin = min(ei, ej)
      if sMax <= eMin {
        result.append([sMax, eMin])
      }

      if ei < ej {
        i += 1
      } else {
        j += 1
      }
    }

    return result
  }
}
