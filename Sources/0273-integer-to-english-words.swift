/// https://leetcode.com/problems/integer-to-english-words/
struct IntegerToEnglishWords {
  func numberToWords(_ num: Int) -> String {
    if num == 0 { return "Zero" }

    let ones = [nil, "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten", "Eleven", "Twelve", "Thirteen", "Fourteen", "Fifteen", "Sixteen", "Seventeen", "Eighteen", "Nineteen"]
    let tens = [nil, nil, "Twenty", "Thirty", "Forty", "Fifty", "Sixty", "Seventy", "Eighty", "Ninety"]
    let thousands = [nil, "Thousand", "Million", "Billion"]

    var num = num
    var result: [String?] = []
    var groupIndex = 0
    while num > 0 {
      defer {
        num /= 1000
        groupIndex += 1
      }

      guard num%1000 != 0 else { continue }

      var part = num%1000
      var group: [String?] = []
      if part >= 100 {
        group += [ones[part/100], "Hundred"]
        part %= 100
      }

      if part >= 20 {
        group += [tens[part/10]]
        part %= 10
      }

      if part >= 0 {
        group += [ones[part]]
      }

      group += [thousands[groupIndex]]
      result = group+result
    }

    return result.compactMap { $0 }.joined(separator: " ")
  }
}
