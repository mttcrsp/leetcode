/// https://leetcode.com/problems/minimum-changes-to-make-alternating-binary-string/
struct MinimumChangesToMakeAlternatingBinaryString {
  func minOperations(_ s: String) -> Int {
    let alternate: (Character) -> Character = { character in
      character == "0" ? "1" : "0"
    }

    var current1: Character = "0"
    var current2: Character = "1"
    var requiredChanges1 = 0
    var requiredChanges2 = 0

    for character in s {
      requiredChanges1 += character == current1 ? 0 : 1
      requiredChanges2 += character == current2 ? 0 : 1
      current1 = alternate(current1)
      current2 = alternate(current2)
    }

    return min(requiredChanges1, requiredChanges2)
  }
}
