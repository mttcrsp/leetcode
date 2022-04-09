/// https://leetcode.com/problems/decode-xored-array/
struct DecodeXoredArray {
  func decode(_ encoded: [Int], _ first: Int) -> [Int] {
    var result: [Int] = [first]
    for value in encoded {
      result.append(result.last! ^ value)
    }
    return result
  }
}
