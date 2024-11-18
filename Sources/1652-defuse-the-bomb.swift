/// https://leetcode.com/problems/defuse-the-bomb/
struct DefuseTheBomb {
  func decrypt(_ code: [Int], _ k: Int) -> [Int] {
    var sum = 0
    for value in code {
      sum += value
    }
    
    var result = [Int](repeating: sum, count: code.count)
    for offset in 0 ..< code.count-abs(k) {
      for index in result.indices {
        let targetIndex = k > 0 ? index-offset : index+offset
        result[index] -= code[(targetIndex+code.count)%code.count]
      }
    }

    return result
  }
}
