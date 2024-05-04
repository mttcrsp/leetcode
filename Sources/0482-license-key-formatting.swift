/// https://leetcode.com/problems/license-key-formatting/
struct LicenseKeyFormatting {
  func licenseKeyFormatting(_ s: String, _ k: Int) -> String {
    var result = ""
    var groupCount = 0
    for character in s.reversed() where character != "-" {
      if groupCount == 0, !result.isEmpty {
        result.append("-")
      }
      result.append(character.uppercased())
      groupCount += 1
      groupCount %= k
    }

    return String(result.reversed())
  }
}
