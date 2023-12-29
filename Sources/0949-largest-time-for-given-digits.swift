/// https://leetcode.com/problems/largest-time-for-given-digits/
struct LargestTimeForGivenDigits {
  func largestTimeFromDigits(_ A: [Int]) -> String {
    var maxMinutes = Int.min
    var maxTime: (hh: Int, mm: Int)?

    for permutation in A.makePermutations() {
      let hh = (permutation[0]*10)+permutation[1]
      guard hh < 24 else { continue }

      let mm = (permutation[2]*10)+permutation[3]
      guard mm < 59 else { continue }

      let minutes = (hh*60)+mm
      guard minutes > maxMinutes else { continue }

      maxTime = (hh, mm)
      maxMinutes = minutes
    }

    guard let (hh, mm) = maxTime else { return "" }
    let hhString = hh < 10 ? "0\(hh)" : "\(hh)"
    let mmString = mm < 10 ? "0\(mm)" : "\(mm)"
    return "\(hhString):\(mmString)"
  }
}

private extension Collection {
  func makePermutations() -> [[Iterator.Element]] {
    var result: [[Iterator.Element]] = []
    var scratch = Array(self)

    func heap(_ n: Int) {
      if n == 1 {
        result.append(scratch)
        return
      }

      for i in 0 ..< n-1 {
        heap(n-1)

        let j = (n%2 == 1) ? 0 : i
        scratch.swapAt(j, n-1)
      }

      heap(n-1)
    }

    heap(scratch.count)

    return result
  }
}
