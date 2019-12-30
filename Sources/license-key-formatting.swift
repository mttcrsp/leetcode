class Solution {
    func licenseKeyFormatting(_ S: String, _ K: Int) -> String {
        var alphanumericsCount = 0
        var result = ""
        for character in S.reversed() where character != "-" {
            result.append(character.uppercased())
            alphanumericsCount += 1
            if alphanumericsCount % K == 0 {
                result.append("-")
            }
        }

        if result.last == "-" {
            result.removeLast()
        }

        return String(result.reversed())
    }
}
