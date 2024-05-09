/// https://leetcode.com/problems/dot-product-of-two-sparse-vectors/
class SparseVector {
  private typealias Element = (index: Int, value: Int)
  private let elements: [Element]

  init(_ nums: [Int]) {
    var elements: [Element] = []
    for (index, value) in nums.enumerated() where value != 0 {
      elements.append((index, value))
    }
    self.elements = elements
  }

  func dotProduct(_ vec: SparseVector) -> Int {
    var result = 0
    let elementsI = elements
    let elementsJ = vec.elements
    var i = 0
    var j = 0
    while i < elementsI.count, j < elementsJ.count {
      if elementsI[i].index == elementsJ[j].index {
        result += elementsI[i].value*elementsJ[j].value
        i += 1
        j += 1
      } else if elementsI[i].index < elementsJ[j].index {
        i += 1
      } else {
        j += 1
      }
    }
    return result
  }
}
