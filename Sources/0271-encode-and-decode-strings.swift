/// https://leetcode.com/problems/encode-and-decode-strings/
class Codec271 {
  func encode(_ strs: [String]) -> String {
    strs.joined(separator: "💯")
  }

  func decode(_ s: String) -> [String] {
    s.components(separatedBy: "💯")
  }
}
