/// https://leetcode.com/problems/rank-transform-of-an-array/
struct RankTransformOfAnArray {
  func arrayRankTransform(_ arr: [Int]) -> [Int] {
    let sortedArr = Set(arr).sorted()

    var ranks: [Int: Int] = [:]
    var rank = 1
    for (i, element) in sortedArr.enumerated() {
      if i == 0 || sortedArr[i-1] != sortedArr[i] {
        ranks[element] = rank
        rank += 1
      }
    }

    var result: [Int] = []
    for element in arr {
      if let rank = ranks[element] {
        result.append(rank)
      }
    }

    return result
  }
}
